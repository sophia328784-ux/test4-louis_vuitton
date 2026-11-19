package androidx.compose.animation.core;

import defpackage.y41;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class VectorConvertersKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TwoWayConverter f4036a = new TwoWayConverterImpl(new y41(12), new y41(29));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TwoWayConverter f4037b = new TwoWayConverterImpl(new y41(13), new y41(14));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TwoWayConverter f4038c = new TwoWayConverterImpl(new y41(15), new y41(16));
    public static final TwoWayConverter d = new TwoWayConverterImpl(new y41(17), new y41(18));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final TwoWayConverter f4039e = new TwoWayConverterImpl(new y41(19), new y41(20));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final TwoWayConverter f4040f = new TwoWayConverterImpl(new y41(21), new y41(22));
    public static final TwoWayConverter g = new TwoWayConverterImpl(new y41(23), new y41(24));

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final TwoWayConverter f4041h = new TwoWayConverterImpl(new y41(25), new y41(26));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final TwoWayConverter f4042i = new TwoWayConverterImpl(new y41(27), new y41(28));

    public static final TwoWayConverter a(Function1 function1, Function1 function2) {
        return new TwoWayConverterImpl(function1, function2);
    }
}
