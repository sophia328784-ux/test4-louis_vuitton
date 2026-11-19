package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.DefaultClock;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zziy extends zziw {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzix f30111f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f30112h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ zzja f30113i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zziy(zzja zzjaVar, int i2, zzjf zzjfVar, List list, int i3, zzix zzixVar, zzam zzamVar) {
        super(i2, zzjfVar, zzje.f30121a, zzamVar, DefaultClock.f29336a);
        this.f30113i = zzjaVar;
        this.f30111f = zzixVar;
        this.g = list;
        this.f30112h = i3;
    }

    @Override // com.google.android.gms.internal.gtm.zziw
    public final void a(zzjh zzjhVar) {
        Status status = zzjhVar.f30127b;
        zzjg zzjgVar = zzjhVar.d;
        Status status2 = Status.f29004f;
        zzja zzjaVar = this.f30113i;
        if (status == status2) {
            "Container resource successfully loaded from ".concat(zzjhVar.a());
            zzao.a(2);
            if (zzjhVar.f30128c == 0) {
                zzit zzitVar = zzjgVar.f30126c;
                byte[] bArr = zzjgVar.f30124a;
                if (!zzitVar.d) {
                    DefaultClock defaultClock = zzjaVar.f30119c;
                    String str = zzitVar.f30102a;
                    zzju zzjuVar = zzjgVar.d;
                    HashMap map = zzjaVar.d;
                    if (map.containsKey(str)) {
                        zziz zzizVar = (zziz) map.get(str);
                        defaultClock.getClass();
                        zzizVar.f30114a = System.currentTimeMillis();
                    } else {
                        defaultClock.getClass();
                        map.put(str, new zziz(status, zzjuVar, System.currentTimeMillis()));
                    }
                    if (bArr != null && bArr.length > 0) {
                        zzjm zzjmVar = zzjaVar.f30118b;
                        String strA = zzjgVar.f30126c.a();
                        zzjmVar.getClass();
                        zzjmVar.f30132b.execute(new zzjl(zzjmVar, strA, bArr));
                    }
                }
            }
            this.f30111f.zza(zzjhVar);
            return;
        }
        zzjhVar.a();
        status.getClass();
        zzao.a(2);
        if (status.W1()) {
            "Response source: ".concat(zzjhVar.a());
            zzao.a(2);
            int length = zzjgVar.f30124a.length;
            zzao.a(2);
        }
        zzjaVar.a(this.f30108b, this.g, this.f30112h + 1, this.f30111f, this.f30110e);
    }
}
