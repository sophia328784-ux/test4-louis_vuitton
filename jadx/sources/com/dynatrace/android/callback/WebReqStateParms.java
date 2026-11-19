package com.dynatrace.android.callback;

import com.dynatrace.agent.events.enrichment.WebContext;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.n00;
import java.net.URL;
import java.util.AbstractMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes2.dex */
abstract class WebReqStateParms {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f27614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CbConstants$WrMethod f27615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CbConstants$WrStates f27616c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f27617e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f27618f = null;
    public long g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f27619h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f27620i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Exception f27621j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AbstractMap f27622k = null;
    public AbstractMap l = null;
    public int d = 0;

    public WebReqStateParms(CbConstants$WrMethod cbConstants$WrMethod, CbConstants$WrStates cbConstants$WrStates) {
        this.f27615b = cbConstants$WrMethod;
        this.f27616c = cbConstants$WrStates;
    }

    public final void a(List list) {
        ServerTimingAnalyzer serverTimingAnalyzer = new ServerTimingAnalyzer();
        String strGroup = null;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Matcher matcher = serverTimingAnalyzer.f27611a.matcher((String) it.next());
                if (matcher.find()) {
                    strGroup = matcher.group(1);
                    if (strGroup == null) {
                        break;
                    }
                    int length = strGroup.length();
                    int i2 = serverTimingAnalyzer.f27612b;
                    if (length <= i2) {
                        break;
                    }
                    strGroup = strGroup.substring(0, i2);
                    break;
                }
            }
        }
        this.f27620i = strGroup;
    }

    public abstract String b();

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract URL f();

    public abstract WebContext g();

    public abstract boolean h();

    public final String toString() {
        CbConstants$WrStates cbConstants$WrStates = this.f27616c;
        String strB = b();
        String strC = c();
        StringBuilder sb = new StringBuilder();
        sb.append(cbConstants$WrStates);
        sb.append(" of ");
        sb.append(strB);
        sb.append(FileUtils.HIDDEN_PREFIX);
        sb.append(this.f27615b);
        return n00.r(" to ", strC, sb);
    }
}
