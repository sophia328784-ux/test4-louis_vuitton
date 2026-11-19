package androidx.compose.ui.layout;

import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/InnerRectRulers;", "Landroidx/compose/ui/layout/RectRulers;", "", "rulers", "<init>", "([Landroidx/compose/ui/layout/RectRulers;)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class InnerRectRulers implements RectRulers {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RectRulers[] f9461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VerticalRuler f9462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HorizontalRuler f9463c;
    public final VerticalRuler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HorizontalRuler f9464e;

    public InnerRectRulers(RectRulers[] rectRulersArr) {
        this.f9461a = rectRulersArr;
        VerticalRuler.Companion companion = VerticalRuler.f9586b;
        int length = rectRulersArr.length;
        final VerticalRuler[] verticalRulerArr = new VerticalRuler[length];
        for (int i2 = 0; i2 < length; i2++) {
            verticalRulerArr[i2] = this.f9461a[i2].getF9462b();
        }
        companion.getClass();
        this.f9462b = new VerticalRuler(new Function2<Placeable.PlacementScope, Float, Float>() { // from class: androidx.compose.ui.layout.VerticalRuler$Companion$maxOf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Float.valueOf(RulerKt.a((Placeable.PlacementScope) obj, true, verticalRulerArr, ((Number) obj2).floatValue()));
            }
        }, null);
        HorizontalRuler.Companion companion2 = HorizontalRuler.f9458b;
        int length2 = this.f9461a.length;
        final HorizontalRuler[] horizontalRulerArr = new HorizontalRuler[length2];
        for (int i3 = 0; i3 < length2; i3++) {
            horizontalRulerArr[i3] = this.f9461a[i3].getF9463c();
        }
        companion2.getClass();
        this.f9463c = new HorizontalRuler(new Function2<Placeable.PlacementScope, Float, Float>() { // from class: androidx.compose.ui.layout.HorizontalRuler$Companion$maxOf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Float.valueOf(RulerKt.a((Placeable.PlacementScope) obj, true, horizontalRulerArr, ((Number) obj2).floatValue()));
            }
        }, null);
        VerticalRuler.Companion companion3 = VerticalRuler.f9586b;
        int length3 = this.f9461a.length;
        final VerticalRuler[] verticalRulerArr2 = new VerticalRuler[length3];
        for (int i4 = 0; i4 < length3; i4++) {
            verticalRulerArr2[i4] = this.f9461a[i4].getD();
        }
        companion3.getClass();
        this.d = new VerticalRuler(new Function2<Placeable.PlacementScope, Float, Float>() { // from class: androidx.compose.ui.layout.VerticalRuler$Companion$minOf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Float.valueOf(RulerKt.a((Placeable.PlacementScope) obj, false, verticalRulerArr2, ((Number) obj2).floatValue()));
            }
        }, null);
        HorizontalRuler.Companion companion4 = HorizontalRuler.f9458b;
        int length4 = this.f9461a.length;
        final HorizontalRuler[] horizontalRulerArr2 = new HorizontalRuler[length4];
        for (int i5 = 0; i5 < length4; i5++) {
            horizontalRulerArr2[i5] = this.f9461a[i5].getF9464e();
        }
        companion4.getClass();
        this.f9464e = new HorizontalRuler(new Function2<Placeable.PlacementScope, Float, Float>() { // from class: androidx.compose.ui.layout.HorizontalRuler$Companion$minOf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Float.valueOf(RulerKt.a((Placeable.PlacementScope) obj, false, horizontalRulerArr2, ((Number) obj2).floatValue()));
            }
        }, null);
    }

    @Override // androidx.compose.ui.layout.RectRulers
    /* JADX INFO: renamed from: a, reason: from getter */
    public final VerticalRuler getF9462b() {
        return this.f9462b;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    /* JADX INFO: renamed from: b, reason: from getter */
    public final HorizontalRuler getF9463c() {
        return this.f9463c;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    /* JADX INFO: renamed from: c, reason: from getter */
    public final HorizontalRuler getF9464e() {
        return this.f9464e;
    }

    @Override // androidx.compose.ui.layout.RectRulers
    /* JADX INFO: renamed from: d, reason: from getter */
    public final VerticalRuler getD() {
        return this.d;
    }

    public final String toString() {
        return ArraysKt.H(this.f9461a, null, "innermostOf(", ")", null, 57);
    }
}
