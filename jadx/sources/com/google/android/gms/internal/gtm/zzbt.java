package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tagmanager.zzq;
import com.linkplay.medialib.ContentTree;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzju f29995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzq f29996c;
    public final com.google.android.gms.tagmanager.zzh d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzbv f29997e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzks f29998f;
    public final zzks g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashSet f29999h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f30000i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final zzhi f30001j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public zzar f30002k;
    public final zzbr l;

    public zzbt(Context context, String str, zzju zzjuVar, zzkd zzkdVar, zzq zzqVar, com.google.android.gms.tagmanager.zzh zzhVar) {
        zzbv zzbvVar = new zzbv();
        this.f29997e = zzbvVar;
        zzks zzksVar = new zzks(new HashMap(50));
        this.f29998f = zzksVar;
        zzks zzksVar2 = new zzks(new HashMap(10));
        this.g = zzksVar2;
        this.f29999h = new HashSet();
        zzbo zzboVar = new zzbo(this);
        Preconditions.i(zzjuVar, "Internal Error: Container resource cannot be null");
        Preconditions.i(zzkdVar, "Internal Error: Runtime resource cannot be null");
        Preconditions.f(str, "Internal Error: ContainerId cannot be empty");
        Preconditions.h(zzqVar);
        Preconditions.h(zzhVar);
        this.f29994a = context;
        this.f29995b = zzjuVar;
        this.f29996c = zzqVar;
        this.d = zzhVar;
        zzbvVar.b(new zzkn(new zzeh()), "1");
        zzbvVar.b(new zzkn(new zzei()), "12");
        zzbvVar.b(new zzkn(new zzej()), "18");
        zzbvVar.b(new zzkn(new zzek()), "19");
        zzbvVar.b(new zzkn(new zzel()), "20");
        zzbvVar.b(new zzkn(new zzem()), "21");
        zzbvVar.b(new zzkn(new zzen()), "23");
        zzbvVar.b(new zzkn(new zzeo()), "24");
        zzbvVar.b(new zzkn(new zzep()), "27");
        zzbvVar.b(new zzkn(new zzeq()), "28");
        zzbvVar.b(new zzkn(new zzer()), "29");
        zzbvVar.b(new zzkn(new zzes()), "30");
        zzbvVar.b(new zzkn(new zzet()), "32");
        zzbvVar.b(new zzkn(new zzet()), "33");
        zzbvVar.b(new zzkn(new zzeu()), "34");
        zzbvVar.b(new zzkn(new zzeu()), "35");
        zzbvVar.b(new zzkn(new zzev()), "39");
        zzbvVar.b(new zzkn(new zzew()), "40");
        zzbvVar.b(new zzkn(new zzft()), ContentTree.ROOT_ID);
        zzbvVar.b(new zzkn(new zzfu()), "10");
        zzbvVar.b(new zzkn(new zzfv()), "25");
        zzbvVar.b(new zzkn(new zzfw()), "26");
        zzbvVar.b(new zzkn(new zzfx()), "37");
        zzbvVar.b(new zzkn(new zzex()), ContentTree.AUDIO_ID);
        zzbvVar.b(new zzkn(new zzey()), ContentTree.IMAGE_ID);
        zzbvVar.b(new zzkn(new zzez()), "4");
        zzbvVar.b(new zzkn(new zzfa()), "5");
        zzbvVar.b(new zzkn(new zzfb()), "6");
        zzbvVar.b(new zzkn(new zzfc()), "7");
        zzbvVar.b(new zzkn(new zzfd()), "8");
        zzbvVar.b(new zzkn(new zzfa()), DbParams.GZIP_DATA_ENCRYPT);
        zzbvVar.b(new zzkn(new zzfe()), DbParams.GZIP_TRANSPORT_ENCRYPT);
        zzbvVar.b(new zzkn(new zzff()), "47");
        zzbvVar.b(new zzkn(new zzfg()), "15");
        zzbvVar.b(new zzkn(new zzfh(this)), "48");
        zzfi zzfiVar = new zzfi();
        zzbvVar.b(new zzkn(zzfiVar), "16");
        zzbvVar.b(new zzkn(zzfiVar), "17");
        zzbvVar.b(new zzkn(new zzfk()), "22");
        zzbvVar.b(new zzkn(new zzfl()), "45");
        zzbvVar.b(new zzkn(new zzfm()), "46");
        zzbvVar.b(new zzkn(new zzfn()), "36");
        zzbvVar.b(new zzkn(new zzfo()), "43");
        zzbvVar.b(new zzkn(new zzfp()), "38");
        zzbvVar.b(new zzkn(new zzfq()), "44");
        zzbvVar.b(new zzkn(new zzfr()), "41");
        zzbvVar.b(new zzkn(new zzfs()), "42");
        h(zza.CONTAINS, new zzif());
        h(zza.ENDS_WITH, new zzig());
        h(zza.EQUALS, new zzih());
        h(zza.GREATER_EQUALS, new zzii());
        h(zza.GREATER_THAN, new zzij());
        h(zza.LESS_EQUALS, new zzik());
        h(zza.LESS_THAN, new zzil());
        h(zza.REGEX, new zzin());
        h(zza.STARTS_WITH, new zzio());
        zzksVar.f(new zzkn(new zzgy(context)), "advertiserId");
        zzksVar.f(new zzkn(new zzgz(context)), "advertiserTrackingEnabled");
        zzksVar.f(new zzkn(new zzha(zzboVar)), "adwordsClickReferrer");
        zzksVar.f(new zzkn(new zzhb(context)), "applicationId");
        zzksVar.f(new zzkn(new zzhc(context)), "applicationName");
        zzksVar.f(new zzkn(new zzhd(context)), "applicationVersion");
        zzksVar.f(new zzkn(new zzhe(context)), "applicationVersionName");
        zzksVar.f(new zzkn(new zzgv(1, zzbvVar)), "arbitraryPixieMacro");
        zzksVar.f(new zzkn(new zzhf(context)), "carrier");
        zzksVar.f(new zzkn(new zzfn()), "constant");
        zzksVar.f(new zzkn(new zzhg(new zzkv(str))), "containerId");
        zzksVar.f(new zzkn(new zzhg(new zzkv(zzjuVar.f30143c))), "containerVersion");
        zzksVar.f(new zzkn(new zzgu(new zzbq(this))), "customMacro");
        zzksVar.f(new zzkn(new zzhj()), "deviceBrand");
        zzksVar.f(new zzkn(new zzhk(context)), "deviceId");
        zzksVar.f(new zzkn(new zzhl()), "deviceModel");
        zzksVar.f(new zzkn(new zzhm()), "deviceName");
        zzksVar.f(new zzkn(new zzhn()), "encode");
        zzksVar.f(new zzkn(new zzho()), "encrypt");
        zzksVar.f(new zzkn(new zzhh()), MvelScriptManager.VAR_EVENT);
        zzksVar.f(new zzkn(new zzhp(zzboVar)), "eventParameters");
        zzksVar.f(new zzkn(new zzhq()), "version");
        zzksVar.f(new zzkn(new zzhr()), "hashcode");
        zzksVar.f(new zzkn(new zzhs(context)), "installReferrer");
        zzksVar.f(new zzkn(new zzht()), "join");
        zzksVar.f(new zzkn(new zzhu()), "language");
        zzksVar.f(new zzkn(new zzhv()), "locale");
        zzksVar.f(new zzkn(new zzhx(context)), "adWordsUniqueId");
        zzksVar.f(new zzkn(new zzhy()), "osVersion");
        zzksVar.f(new zzkn(new zzhz()), "platform");
        zzksVar.f(new zzkn(new zzia()), "random");
        zzksVar.f(new zzkn(new zzib()), "regexGroup");
        zzksVar.f(new zzkn(new zzid(context)), "resolution");
        zzksVar.f(new zzkn(new zzic()), "runtimeVersion");
        zzksVar.f(new zzkn(new zzie()), "sdkVersion");
        zzhi zzhiVar = new zzhi();
        this.f30001j = zzhiVar;
        zzksVar.f(new zzkn(zzhiVar), "currentTime");
        zzksVar.f(new zzkn(new zzhw(zzboVar)), "userProperty");
        zzksVar.f(new zzkn(new zzir(zzap.b(context))), "arbitraryPixel");
        zzksVar.f(new zzkn(new zzgu(new zzbp(this))), "customTag");
        zzksVar.f(new zzkn(new zzis(context, zzboVar)), "universalAnalytics");
        zzksVar.f(new zzkn(new zzip(zzap.b(context))), "queueRequest");
        zzksVar.f(new zzkn(new zziq(zzqVar, zzboVar)), "sendMeasurement");
        zzksVar.f(new zzkn(new zzgv(0, zzbvVar)), "arbitraryPixieTag");
        zzksVar.f(new zzkn(new zzgx(context, zzboVar)), "suppressPassthrough");
        zzksVar2.f(new zzkn(new zzgo()), "decodeURI");
        zzksVar2.f(new zzkn(new zzgp()), "decodeURIComponent");
        zzksVar2.f(new zzkn(new zzgq()), "encodeURI");
        zzksVar2.f(new zzkn(new zzgr()), "encodeURIComponent");
        zzksVar2.f(new zzkn(new zzgw()), "log");
        zzksVar2.f(new zzkn(new zzgs()), "isArray");
        for (zzdh zzdhVar : zzkdVar.f30155a) {
            zzbv zzbvVar2 = this.f29997e;
            zzdhVar.f30058a = zzbvVar2;
            zzbvVar2.b(new zzkn(zzdhVar), zzdhVar.f30059b);
        }
        zzks zzksVar3 = new zzks(new HashMap(1));
        zzksVar3.f(this.f29998f, "mobile");
        zzksVar3.f(this.g, "common");
        this.f29997e.b(zzksVar3, "gtmUtils");
        zzks zzksVar4 = new zzks(new HashMap(this.f29998f.f30163a));
        zzksVar4.f30182b = true;
        zzks zzksVar5 = new zzks(new HashMap(this.g.f30163a));
        zzksVar5.f30182b = true;
        if (this.f29997e.e("main") && (this.f29997e.a("main") instanceof zzkn)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(zzksVar3);
            zzkw.d(this.f29997e, new zzkt("main", arrayList));
        }
        this.f29998f.f(zzksVar4, "base");
        this.g.f(zzksVar5, "base");
        zzksVar3.f30182b = true;
        this.f29998f.f30182b = true;
        this.g.f30182b = true;
    }

    public final zzkk a(zzjx zzjxVar) {
        this.f29999h.clear();
        try {
            zzkk zzkkVarC = c(g(zzjxVar.f30146a));
            if (zzkkVarC instanceof zzkl) {
                return zzkkVarC;
            }
            zzan.a(this.f29994a, "Predicate must return a boolean value");
            return new zzkl(Boolean.FALSE);
        } catch (IllegalStateException unused) {
            zzbg.a();
            return zzko.g;
        }
    }

    public final void b(zzar zzarVar) {
        Context context;
        zzkk zzklVar;
        zzkv zzkvVar = new zzkv(zzarVar.f29961b);
        zzbv zzbvVar = this.f29997e;
        zzbvVar.b(zzkvVar, "gtm.globals.eventName");
        zzhi zzhiVar = this.f30001j;
        zzhiVar.getClass();
        zzhiVar.f30082a = zzarVar;
        this.f30002k = zzarVar;
        HashSet<zzjx> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashMap map = new HashMap();
        Iterator it = this.f29995b.f30141a.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            context = this.f29994a;
            if (!zHasNext) {
                break;
            }
            zzka zzkaVar = (zzka) it.next();
            List list = zzkaVar.f30153c;
            List list2 = zzkaVar.d;
            if (list.isEmpty() && list2.isEmpty()) {
                "Trigger is not being evaluated since it has no associated tags: ".concat(String.valueOf(zzkaVar));
                zzao.a(2);
            } else {
                "Evaluating trigger ".concat(String.valueOf(zzkaVar));
                zzao.a(2);
                Iterator it2 = zzkaVar.f30152b.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        zzjx zzjxVar = (zzjx) it2.next();
                        zzkk zzkkVarA = (zzkk) map.get(zzjxVar);
                        if (zzkkVarA == null) {
                            zzkkVarA = a(zzjxVar);
                            map.put(zzjxVar, zzkkVarA);
                        }
                        zzklVar = zzko.g;
                        if (zzkkVarA != zzklVar) {
                            if (((zzkl) zzkkVarA).f30165b.booleanValue()) {
                                zzklVar = new zzkl(Boolean.FALSE);
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        Iterator it3 = zzkaVar.f30151a.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                zzklVar = new zzkl(Boolean.TRUE);
                                break;
                            }
                            zzjx zzjxVar2 = (zzjx) it3.next();
                            zzkk zzkkVarA2 = (zzkk) map.get(zzjxVar2);
                            if (zzkkVarA2 == null) {
                                zzkkVarA2 = a(zzjxVar2);
                                map.put(zzjxVar2, zzkkVarA2);
                            }
                            zzklVar = zzko.g;
                            if (zzkkVarA2 != zzklVar) {
                                if (!((zzkl) zzkkVarA2).f30165b.booleanValue()) {
                                    zzklVar = new zzkl(Boolean.FALSE);
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                    }
                }
                if (zzklVar == zzko.g) {
                    zzan.c(context, "Error encounted while evaluating trigger ".concat(String.valueOf(zzkaVar)));
                    if (!list2.isEmpty()) {
                        "Blocking tags: ".concat(String.valueOf(list2));
                        zzao.a(2);
                        hashSet2.addAll(list2);
                    }
                } else if (((zzkl) zzklVar).f30165b.booleanValue()) {
                    "Trigger is firing: ".concat(String.valueOf(zzkaVar));
                    zzao.a(2);
                    if (!list.isEmpty()) {
                        "Adding tags to firing candidates: ".concat(String.valueOf(list));
                        zzao.a(2);
                        hashSet.addAll(list);
                    }
                    if (!list2.isEmpty()) {
                        "Blocking disabled tags: ".concat(String.valueOf(list2));
                        zzao.a(2);
                        hashSet2.addAll(list2);
                    }
                }
            }
        }
        hashSet.removeAll(hashSet2);
        boolean z = false;
        for (zzjx zzjxVar3 : hashSet) {
            this.f29999h.clear();
            "Executing firing tag ".concat(String.valueOf(zzjxVar3));
            zzao.a(2);
            try {
                c(g(zzjxVar3.f30146a));
                zzkg zzkgVar = (zzkg) zzjxVar3.f30146a.get(zzb.DISPATCH_ON_FIRE.toString());
                if (zzkgVar != null && zzkgVar.f30159a == 8 && ((Boolean) zzkgVar.f30160b).booleanValue()) {
                    z = true;
                    String.valueOf(zzjxVar3);
                    zzao.a(2);
                }
            } catch (IllegalStateException e2) {
                String.valueOf(zzjxVar3);
                zzan.b(e2, context);
            }
        }
        zzbvVar.c();
        if (zzarVar.f29964f) {
            zzao.a(2);
            try {
                this.f29996c.J(zzarVar.d, zzarVar.f29961b, zzarVar.f29960a, zzarVar.f29962c.getTime());
            } catch (RemoteException e3) {
                zzan.b(e3, context);
            }
        } else {
            zzao.a(2);
        }
        if (z) {
            zzao.a(2);
            zzap.b(context);
            if (zzce.m == null) {
                zzce.m = new zzce();
            }
            zzce.m.a();
        }
    }

    public final zzkk c(HashMap map) {
        Map map2;
        zzkt zzktVarA;
        zzkk zzkkVar = (zzkk) map.get(zzb.FUNCTION.toString());
        boolean z = zzkkVar instanceof zzkv;
        Context context = this.f29994a;
        if (!z) {
            zzan.a(context, "No function id in properties");
            return zzko.f30172h;
        }
        String str = ((zzkv) zzkkVar).f30188b;
        zzbv zzbvVar = this.f29997e;
        if (zzbvVar.e(str)) {
            HashMap map3 = new HashMap();
            for (Map.Entry entry : map.entrySet()) {
                if (((String) entry.getKey()).startsWith("vtp_")) {
                    map3.put(((String) entry.getKey()).substring(4), (zzkk) entry.getValue());
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new zzks(map3));
            zzktVarA = new zzkt(str, arrayList);
        } else {
            HashMap map4 = zzdg.f30057a;
            String str2 = map4.containsKey(str) ? ((zzdf) map4.get(str)).f30055a : null;
            if (str2 == null || (map2 = this.f29998f.f30163a) == null || !map2.containsKey(str2)) {
                zzan.a(context, fc.h("functionId '", str, "' is not supported"));
                return zzko.f30172h;
            }
            try {
                zzktVarA = zzdg.a(str, map);
            } catch (RuntimeException e2) {
                e2.getMessage();
                zzbg.a();
                zzktVarA = null;
            }
        }
        if (zzktVarA == null) {
            zzan.a(context, "Internal error: failed to convert function to a valid statement");
            return zzko.f30172h;
        }
        "Executing: ".concat(String.valueOf(zzktVarA.f30183b));
        zzao.a(2);
        zzkk zzkkVarD = zzkw.d(zzbvVar, zzktVarA);
        if (!(zzkkVarD instanceof zzko)) {
            return zzkkVarD;
        }
        zzko zzkoVar = (zzko) zzkkVarD;
        return zzkoVar.f30174c ? zzkoVar.d : zzkkVarD;
    }

    public final zzkk d(zzkg zzkgVar) {
        int i2 = zzkgVar.f30159a;
        List list = zzkgVar.f30161c;
        Object obj = zzkgVar.f30160b;
        switch (i2) {
            case 1:
                try {
                    return new zzkm(Double.valueOf(Double.parseDouble((String) obj)));
                } catch (NumberFormatException unused) {
                    return new zzkv((String) obj);
                }
            case 2:
                List list2 = (List) obj;
                ArrayList arrayList = new ArrayList(list2.size());
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList.add(d((zzkg) it.next()));
                }
                return new zzkr(arrayList);
            case 3:
                Map map = (Map) obj;
                HashMap map2 = new HashMap(map.size());
                for (Map.Entry entry : map.entrySet()) {
                    zzkk zzkkVarD = d((zzkg) entry.getKey());
                    map2.put(zzdj.d(zzkkVarD), d((zzkg) entry.getValue()));
                }
                return new zzks(map2);
            case 4:
                zzkk zzkkVarE = e((String) obj);
                if (!(zzkkVarE instanceof zzkv) || list.isEmpty()) {
                    return zzkkVarE;
                }
                String strReplaceAll = ((zzkv) zzkkVarE).f30188b;
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    if (((Integer) it2.next()).intValue() == 12) {
                        try {
                            strReplaceAll = URLEncoder.encode(strReplaceAll, "UTF-8").replaceAll("\\+", "%20");
                        } catch (UnsupportedEncodingException unused2) {
                            zzbg.b();
                        }
                    }
                }
                return new zzkv(strReplaceAll);
            case 5:
                return new zzkv((String) obj);
            case 6:
                return new zzkm(Double.valueOf(((Integer) obj).doubleValue()));
            case 7:
                StringBuilder sb = new StringBuilder();
                Iterator it3 = ((List) obj).iterator();
                while (it3.hasNext()) {
                    sb.append(zzdj.d(d((zzkg) it3.next())));
                }
                return new zzkv(sb.toString());
            default:
                return new zzkl((Boolean) obj);
        }
    }

    public final zzkk e(String str) {
        this.f30000i++;
        f();
        zzao.a(2);
        HashSet hashSet = this.f29999h;
        if (hashSet.contains(str)) {
            this.f30000i--;
            md.k(fc.i("Macro cycle detected.  Current macro reference: ", str, ". Previous macro references: ", hashSet.toString()));
            return null;
        }
        hashSet.add(str);
        zzjx zzjxVar = (zzjx) this.f29995b.f30142b.get(str);
        if (zzjxVar == null) {
            this.f30000i--;
            hashSet.remove(str);
            md.k(tr.h(f(), "Attempting to resolve unknown macro ", str));
            return null;
        }
        zzkk zzkkVarC = c(g(zzjxVar.f30146a));
        f();
        zzao.a(2);
        this.f30000i--;
        hashSet.remove(str);
        return zzkkVarC;
    }

    public final String f() {
        if (this.f30000i <= 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toString(this.f30000i));
        for (int i2 = 2; i2 < this.f30000i; i2++) {
            sb.append(' ');
        }
        sb.append(": ");
        return sb.toString();
    }

    public final HashMap g(Map map) {
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            map2.put((String) entry.getKey(), d((zzkg) entry.getValue()));
        }
        return map2;
    }

    public final void h(zza zzaVar, zzdk zzdkVar) {
        HashMap map = zzdg.f30057a;
        String string = zzaVar.toString();
        HashMap map2 = zzdg.f30057a;
        this.f29998f.f(new zzkn(zzdkVar), map2.containsKey(string) ? ((zzdf) map2.get(string)).f30055a : null);
    }
}
