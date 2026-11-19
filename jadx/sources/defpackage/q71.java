package defpackage;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q71 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79035b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f79036c;
    public final /* synthetic */ RealBufferedSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f79037e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f79038f;

    public /* synthetic */ q71(Ref$ObjectRef ref$ObjectRef, RealBufferedSource realBufferedSource, Ref$ObjectRef ref$ObjectRef2, Ref$ObjectRef ref$ObjectRef3) {
        this.f79036c = ref$ObjectRef;
        this.d = realBufferedSource;
        this.f79037e = ref$ObjectRef2;
        this.f79038f = ref$ObjectRef3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) throws IOException {
        int i2 = this.f79035b;
        Ref$ObjectRef ref$ObjectRef = this.f79038f;
        Ref$ObjectRef ref$ObjectRef2 = this.f79037e;
        RealBufferedSource realBufferedSource = this.d;
        Ref$ObjectRef ref$ObjectRef3 = this.f79036c;
        switch (i2) {
            case 0:
                int iIntValue = ((Integer) obj).intValue();
                long jLongValue = ((Long) obj2).longValue();
                if (iIntValue == 21589) {
                    if (jLongValue < 1) {
                        az.o("bad zip: extended timestamp extra too short");
                        return null;
                    }
                    byte b2 = realBufferedSource.readByte();
                    boolean z = (b2 & 1) == 1;
                    boolean z2 = (b2 & 2) == 2;
                    boolean z3 = (b2 & 4) == 4;
                    long j2 = z ? 5L : 1L;
                    if (z2) {
                        j2 += 4;
                    }
                    if (z3) {
                        j2 += 4;
                    }
                    if (jLongValue < j2) {
                        az.o("bad zip: extended timestamp extra too short");
                        return null;
                    }
                    if (z) {
                        ref$ObjectRef3.f71921b = Integer.valueOf(realBufferedSource.w1());
                    }
                    if (z2) {
                        ref$ObjectRef2.f71921b = Integer.valueOf(realBufferedSource.w1());
                    }
                    if (z3) {
                        ref$ObjectRef.f71921b = Integer.valueOf(realBufferedSource.w1());
                    }
                }
                return Unit.f71739a;
            default:
                int iIntValue2 = ((Integer) obj).intValue();
                long jLongValue2 = ((Long) obj2).longValue();
                if (iIntValue2 == 1) {
                    if (ref$ObjectRef3.f71921b != null) {
                        az.o("bad zip: NTFS extra attribute tag 0x0001 repeated");
                        return null;
                    }
                    if (jLongValue2 != 24) {
                        az.o("bad zip: NTFS extra attribute tag 0x0001 size != 24");
                        return null;
                    }
                    ref$ObjectRef3.f71921b = Long.valueOf(realBufferedSource.A0());
                    ref$ObjectRef2.f71921b = Long.valueOf(realBufferedSource.A0());
                    ref$ObjectRef.f71921b = Long.valueOf(realBufferedSource.A0());
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ q71(RealBufferedSource realBufferedSource, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, Ref$ObjectRef ref$ObjectRef3) {
        this.d = realBufferedSource;
        this.f79036c = ref$ObjectRef;
        this.f79037e = ref$ObjectRef2;
        this.f79038f = ref$ObjectRef3;
    }
}
