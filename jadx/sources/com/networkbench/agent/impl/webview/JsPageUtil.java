package com.networkbench.agent.impl.webview;

import android.text.TextUtils;
import android.view.View;
import com.networkbench.R;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.r;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class JsPageUtil {
    private static String JsInjectHeight = "";
    private static final String TAG = "JsPageUtil";
    public static boolean isUpdate = false;
    private static String jsWithResourceTiming = "!function(){var e;function n(e,n){if(e)for(var t=0;t<e.length&&!1!==n.call(e[t],e[t],t);t++);}var t,r='navigation',i=['name','initiatorType','entryType','duration','startTime','fetchStart','domainLookupStart','domainLookupEnd','connectStart','secureConnectionStart','connectEnd','requestStart','responseEnd','responseStart','decodedBodySize','encodedBodySize','transferSize','serverTiming','renderBlockingStatus','responseStatus'];function a(e){if(e&&0!==e.length){var a=[];if(n(e,(function(e){if(!e)return!0;if(e.responseEnd-e.startTime<=5)return!0;var t={};if(n(i,(function(n){n in e&&(t[n]=e[n])})),t.fetchStart<=0&&(t.fetchStart=t.startTime),t.entryType===r&&(t.duration=t.responseEnd,t.name=window.location.href),!t.name)return!0;a.push(t)})),a.length>0&&t){var o=window.performance.timing;t({entries:a,navigationStart:(o||{}).navigationStart})}}}function o(e,n){try{if(!window.PerformanceObserver||function(e,n,t){var r;if(null==e)return-1;var i=Object(e),a=i.length>>>0;if(0===a)return-1;var o=+t||0;if(Math.abs(o)===Infinity&&(o=0),o>=a)return-1;for(r=Math.max(o>=0?o:a-Math.abs(o),0);r<a;){if(r in i&&i[r]===n)return r;r++}return-1}(window.PerformanceObserver.supportedEntryTypes,e)<0)return;var t=new PerformanceObserver((function(e){n(e)}));return t.observe({entryTypes:[e]}),t}catch(r){}}try{window.__ty_app_inject_guard||(window.__ty_app_inject_guard=!0,function(){try{if(!window.performance)return;if(window.webkit&&window.webkit.messageHandlers&&window.webkit.messageHandlers.nbs_performance_entries?t=function(e){try{window.webkit.messageHandlers.nbs_performance_entries.postMessage(e)}catch(n){}}:'undefined'!=typeof nbsJsBridge&&nbsJsBridge.logRes&&(t=function(e){try{nbsJsBridge.logRes(JSON.stringify(e))}catch(n){}}),!t)return;var e;try{e=window.performance.getEntriesByType('navigation')[0]}catch(i){}e&&'responseEnd'in e||(e=function(){var e=window.performance.timing;if(e&&e.navigationStart>0){var t={name:window.location.href,initiatorType:r,entryType:r,startTime:0};return n(['fetchStart','domainLookupStart','domainLookupEnd','connectStart','secureConnectionStart','connectEnd','requestStart','responseStart','responseEnd'],(function(n){e[n]>0&&(t[n]=Math.max(e[n]-e.navigationStart,0))})),t}}()),e&&a([e]);try{a(window.performance.getEntriesByType('resource'))}catch(i){}o('resource',(function(e){try{a(e.getEntries())}catch(i){}}))}catch(i){}}(),function(){try{if(window.webkit&&window.webkit.messageHandlers&&window.webkit.messageHandlers.nbsDOMChanged?e=function(e){try{window.webkit.messageHandlers.nbsDOMChanged.postMessage(e)}catch(n){}}:'undefined'!=typeof nbsDOMChanged&&nbsDOMChanged.postMessage&&(e=function(e){try{nbsDOMChanged.postMessage(e)}catch(n){}}),!e)return;var n=window.MutationObserver||window.WebKitMutationObserver||window.MozMutationObserver,t=window.document,r=0;if(n)new n((function(){try{var n=(new Date).getTime();n-r>1e3&&(r=n,e(''))}catch(t){}})).observe(t,{childList:!0,characterData:!0,subtree:!0,attributes:!0,attributeFilter:['class','style']})}catch(i){}}())}catch(s){}}();\n";
    public static int progressControl = 15;

    public static String formatBrsAgentJs() {
        if (ab.c(JsInjectHeight)) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(JsInjectHeight);
        if (!TextUtils.isEmpty(r.u().t())) {
            stringBuffer.append(getUserIdString());
        }
        return stringBuffer.toString();
    }

    public static String formatJsWrapper(String... strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : strArr) {
            stringBuffer.append(str);
        }
        return "javascript:(function() {var parent = document.getElementsByTagName('head').item(0);var script = document.createElement('script');script.type = 'text/javascript';script.innerHTML = " + ((Object) stringBuffer) + ";if(!parent) return;parent.appendChild(script)})()";
    }

    public static List<String> getAllInjectJs(View view) {
        ArrayList arrayList = new ArrayList();
        String strB = j.b(getUUIDFromWebView(view));
        if (!ab.c(strB)) {
            arrayList.add(strB);
        }
        if (!ab.c(jsWithResourceTiming)) {
            arrayList.add(jsWithResourceTiming);
        }
        String brsAgentJs = formatBrsAgentJs();
        if (!ab.c(brsAgentJs)) {
            arrayList.add(brsAgentJs);
        }
        return arrayList;
    }

    private static String getUUIDFromWebView(View view) {
        if (view == null) {
            return "";
        }
        if (view.getTag(R.string.webview_uuid_tag) != null) {
            return view.getTag(R.string.webview_uuid_tag).toString();
        }
        String strB = ab.b();
        view.setTag(R.string.webview_uuid_tag, strB);
        return strB;
    }

    private static String getUserIdString() {
        try {
            return "window.localStorage.setItem('TY_USER_ID', '" + r.u().t() + "');";
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean isInjectEnabled(int i2) {
        return i2 >= progressControl && r.u().ad() && Harvest.isHttp_network_enabled();
    }

    public static void setJSAgent(String str) {
        if (TextUtils.isEmpty(str)) {
            isUpdate = true;
        } else {
            JsInjectHeight = str;
        }
    }

    public static void setJSAgentCon(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JsInjectHeight = str;
    }

    public static void setJsWithResourceTiming(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        jsWithResourceTiming = str;
    }
}
