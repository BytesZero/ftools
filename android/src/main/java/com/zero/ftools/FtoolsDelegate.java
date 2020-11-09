package com.zero.ftools;

import android.app.Activity;
import android.content.Intent;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

/**
 * 工具类代理
 */
public class FtoolsDelegate {
    private Activity activity;
    private MethodChannel.Result pendingResult;

    public FtoolsDelegate(Activity activity) {
        this.activity = activity;
    }


    /**
     * 按下 Home 按键
     *
     * @param call   MethodCall
     * @param result Result
     */
    public void pressedHome(MethodCall call, MethodChannel.Result result) {
        this.pendingResult = result;
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_HOME);
        activity.startActivity(intent);
        pendingResult.success(true);
    }

}
