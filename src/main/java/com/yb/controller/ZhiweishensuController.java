package com.yb.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
import java.lang.*;
import java.math.*;
import com.yb.utils.*;
import java.util.stream.Collectors;
import jakarta.servlet.http.HttpServletRequest;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.yb.annotation.IgnoreAuth;
import com.yb.annotation.SysLog;

import com.yb.entity.ZhiweishensuEntity;
import com.yb.entity.view.ZhiweishensuView;

import com.yb.service.ZhiweishensuService;
import com.yb.utils.PageUtils;
import com.yb.utils.R;
import com.yb.utils.EncryptUtil;
import com.yb.utils.MPUtil;
import com.yb.utils.MapUtils;
import com.yb.utils.CommonUtil;
import java.io.IOException;

/**
 * 职位申诉
 * 后端接口
 * @author 
 * @email 
 * @date 2026-01-30 23:21:48
 */
@RestController
@RequestMapping("/zhiweishensu")
public class ZhiweishensuController {
    @Autowired
    private ZhiweishensuService zhiweishensuService;










    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ZhiweishensuEntity zhiweishensu,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yuangong")) {
			zhiweishensu.setGonghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("renshiguanliyuan")) {
			zhiweishensu.setGuanlizhanghao((String)request.getSession().getAttribute("username"));
		}
        //设置查询条件
        QueryWrapper<ZhiweishensuEntity> ew = new QueryWrapper<ZhiweishensuEntity>();


        //查询结果
		PageUtils page = zhiweishensuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhiweishensu), params), params));
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(page,deSens);
        return R.ok().put("data", page);
    }


    /**
     * 前台列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ZhiweishensuEntity zhiweishensu,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date shensuriqistart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd") Date shensuriqiend,
		HttpServletRequest request){
        //设置查询条件
        QueryWrapper<ZhiweishensuEntity> ew = new QueryWrapper<ZhiweishensuEntity>();
        if(shensuriqistart!=null) ew.ge("shensuriqi", shensuriqistart);
        if(shensuriqiend!=null) ew.le("shensuriqi", shensuriqiend);

        //查询结果
		PageUtils page = zhiweishensuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhiweishensu), params), params));
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(page,deSens);
        return R.ok().put("data", page);
    }




	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ZhiweishensuEntity zhiweishensu){
       	QueryWrapper<ZhiweishensuEntity> ew = new QueryWrapper<ZhiweishensuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( zhiweishensu, "zhiweishensu"));
        return R.ok().put("data", zhiweishensuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ZhiweishensuEntity zhiweishensu){
        QueryWrapper< ZhiweishensuEntity> ew = new QueryWrapper< ZhiweishensuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( zhiweishensu, "zhiweishensu"));
		ZhiweishensuView zhiweishensuView =  zhiweishensuService.selectView(ew);
		return R.ok("查询职位申诉成功").put("data", zhiweishensuView);
    }

    /**
     * 后台详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ZhiweishensuEntity zhiweishensu = zhiweishensuService.getById(id);
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(zhiweishensu,deSens);
        return R.ok().put("data", zhiweishensu);
    }

    /**
     * 前台详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ZhiweishensuEntity zhiweishensu = zhiweishensuService.getById(id);
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(zhiweishensu,deSens);
        return R.ok().put("data", zhiweishensu);
    }




    /**
     * 后台保存
     */
    @RequestMapping("/save")
    @SysLog("新增职位申诉")
    public R save(@RequestBody ZhiweishensuEntity zhiweishensu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zhiweishensu);
        zhiweishensuService.save(zhiweishensu);
        return R.ok().put("data",zhiweishensu.getId());
    }

    /**
     * 前台保存
     */
    @SysLog("新增职位申诉")
    @RequestMapping("/add")
    public R add(@RequestBody ZhiweishensuEntity zhiweishensu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zhiweishensu);
        zhiweishensuService.save(zhiweishensu);
        return R.ok().put("data",zhiweishensu.getId());
    }





    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改职位申诉")
    public R update(@RequestBody ZhiweishensuEntity zhiweishensu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zhiweishensu);
        //全部更新
        zhiweishensuService.updateById(zhiweishensu);
        return R.ok();
    }

    /**
     * 审核
     */
    @RequestMapping("/shBatch")
    @Transactional
    @SysLog("审核职位申诉")
    public R update(@RequestBody Long[] ids, @RequestParam String sfsh, @RequestParam String shhf){
        List<ZhiweishensuEntity> list = new ArrayList<ZhiweishensuEntity>();
        for(Long id : ids) {
            ZhiweishensuEntity zhiweishensu = zhiweishensuService.getById(id);
            zhiweishensu.setSfsh(sfsh);
            zhiweishensu.setShhf(shhf);
            list.add(zhiweishensu);
        }
        zhiweishensuService.updateBatchById(list);
        return R.ok();
    }




    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除职位申诉")
    public R delete(@RequestBody Long[] ids){
        zhiweishensuService.removeBatchByIds(Arrays.asList(ids));
        return R.ok();
    }





    // hasAlipay:否




}
