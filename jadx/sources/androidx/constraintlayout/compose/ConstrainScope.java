package androidx.constraintlayout.compose;

import androidx.compose.foundation.layout.LayoutScopeMarker;
import androidx.compose.ui.unit.Dp;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLString;
import com.batch.android.s.b;
import defpackage.cj;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.properties.ObservableProperty;
import kotlin.reflect.KProperty;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@LayoutScopeMarker
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0007\b\tB\u0019\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Landroidx/constraintlayout/compose/ConstrainScope;", "", b.a.f24015b, "Landroidx/constraintlayout/core/parser/CLObject;", "containerObject", "<init>", "(Ljava/lang/Object;Landroidx/constraintlayout/core/parser/CLObject;)V", "DimensionProperty", "DpProperty", "FloatProperty", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ConstrainScope {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f11221i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f11222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CLObject f11223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstrainedLayoutReference f11224c = new ConstrainedLayoutReference("parent");
    public final VerticalAnchorable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HorizontalAnchorable f11225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final VerticalAnchorable f11226f;
    public final HorizontalAnchorable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DimensionProperty f11227h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/constraintlayout/compose/ConstrainScope$DimensionProperty;", "Lkotlin/properties/ObservableProperty;", "Landroidx/constraintlayout/compose/Dimension;", "initialValue", "<init>", "(Landroidx/constraintlayout/compose/ConstrainScope;Landroidx/constraintlayout/compose/Dimension;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class DimensionProperty extends ObservableProperty<Dimension> {
        public DimensionProperty(Dimension dimension) {
            super(dimension);
        }

        @Override // kotlin.properties.ObservableProperty
        public final void c(KProperty kProperty, Object obj, Object obj2) {
            CLElement cLElementA;
            Dimension dimension = (Dimension) obj2;
            CLObject cLObject = ConstrainScope.this.f11223b;
            String f72049j = kProperty.getF72049j();
            dimension.getClass();
            DimensionDescription dimensionDescription = (DimensionDescription) dimension;
            DimensionSymbol dimensionSymbol = dimensionDescription.f11262a;
            DimensionSymbol dimensionSymbol2 = dimensionDescription.f11264c;
            DimensionSymbol dimensionSymbol3 = dimensionDescription.f11263b;
            Dp dp = dimensionSymbol3.f11265a;
            String str = dimensionSymbol3.f11266b;
            if (dp == null && str == null && dimensionSymbol2.f11265a == null && dimensionSymbol2.f11266b == null) {
                cLElementA = dimensionSymbol.a();
            } else {
                CLObject cLObject2 = new CLObject(new char[0]);
                if (dimensionSymbol3.f11265a != null || str != null) {
                    cLObject2.R("min", dimensionSymbol3.a());
                }
                if (dimensionSymbol2.f11265a != null || dimensionSymbol2.f11266b != null) {
                    cLObject2.R("max", dimensionSymbol2.a());
                }
                cLObject2.R("value", dimensionSymbol.a());
                cLElementA = cLObject2;
            }
            cLObject.R(f72049j, cLElementA);
        }
    }

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(ConstrainScope.class, "width", "getWidth()Landroidx/constraintlayout/compose/Dimension;", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        f11221i = new KProperty[]{reflectionFactory.f(mutablePropertyReference1Impl), cj.r(ConstrainScope.class, "height", "getHeight()Landroidx/constraintlayout/compose/Dimension;", 0, reflectionFactory), cj.r(ConstrainScope.class, "visibility", "getVisibility()Landroidx/constraintlayout/compose/Visibility;", 0, reflectionFactory), cj.r(ConstrainScope.class, "scaleX", "getScaleX()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "scaleY", "getScaleY()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "rotationX", "getRotationX()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "rotationY", "getRotationY()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "rotationZ", "getRotationZ()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "translationX", "getTranslationX-D9Ej5fM()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "translationY", "getTranslationY-D9Ej5fM()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "translationZ", "getTranslationZ-D9Ej5fM()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "pivotX", "getPivotX()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "pivotY", "getPivotY()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "horizontalChainWeight", "getHorizontalChainWeight()F", 0, reflectionFactory), cj.r(ConstrainScope.class, "verticalChainWeight", "getVerticalChainWeight()F", 0, reflectionFactory)};
    }

    public ConstrainScope(Object obj, CLObject cLObject) {
        this.f11222a = obj;
        this.f11223b = cLObject;
        this.d = new ConstraintVerticalAnchorable(-2, cLObject);
        new ConstraintVerticalAnchorable(0, cLObject);
        this.f11225e = new ConstraintHorizontalAnchorable(0, cLObject);
        this.f11226f = new ConstraintVerticalAnchorable(-1, cLObject);
        new ConstraintVerticalAnchorable(1, cLObject);
        this.g = new ConstraintHorizontalAnchorable(1, cLObject);
        new ConstraintBaselineAnchorable(cLObject);
        new DimensionProperty(new DimensionDescription("wrap"));
        this.f11227h = new DimensionProperty(new DimensionDescription("wrap"));
        Visibility.f11279b.getClass();
        final Visibility visibility = Visibility.f11280c;
        new ObservableProperty<Visibility>(visibility) { // from class: androidx.constraintlayout.compose.ConstrainScope$visibility$2
            @Override // kotlin.properties.ObservableProperty
            public final void c(KProperty kProperty, Object obj2, Object obj3) {
                CLObject cLObject2 = this.f11233b.f11223b;
                String f72049j = kProperty.getF72049j();
                String str = ((Visibility) obj3).f11281a;
                cLObject2.getClass();
                CLString cLString = new CLString(str.toCharArray());
                cLString.f11410c = 0L;
                cLString.x(str.length() - 1);
                cLObject2.R(f72049j, cLString);
            }
        };
        new FloatProperty(this, 1.0f, null, 2, null);
        int i2 = 2;
        DefaultConstructorMarker defaultConstructorMarker = null;
        String str = null;
        new FloatProperty(this, 1.0f, str, i2, defaultConstructorMarker);
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        new FloatProperty(this, f2, str, i2, defaultConstructorMarker);
        new FloatProperty(this, f2, str, i2, defaultConstructorMarker);
        new FloatProperty(this, f2, str, i2, defaultConstructorMarker);
        Dp.Companion companion = Dp.f11004c;
        new DpProperty(this, f2, str, i2, defaultConstructorMarker);
        new DpProperty(this, f2, str, i2, defaultConstructorMarker);
        new DpProperty(this, f2, str, i2, defaultConstructorMarker);
        float f3 = 0.5f;
        new FloatProperty(this, f3, str, i2, defaultConstructorMarker);
        new FloatProperty(this, f3, str, i2, defaultConstructorMarker);
        new FloatProperty(Float.NaN, "hWeight");
        new FloatProperty(Float.NaN, "vWeight");
    }

    public static void a(ConstrainScope constrainScope, ConstraintLayoutBaseScope.VerticalAnchor verticalAnchor, ConstraintLayoutBaseScope.VerticalAnchor verticalAnchor2, float f2, float f3, int i2) {
        if ((i2 & 4) != 0) {
            Dp.Companion companion = Dp.f11004c;
            f2 = 0.0f;
        }
        if ((i2 & 8) != 0) {
            Dp.Companion companion2 = Dp.f11004c;
            f3 = 0.0f;
        }
        Dp.Companion companion3 = Dp.f11004c;
        ((BaseVerticalAnchorable) constrainScope.d).b(verticalAnchor, f2);
        ((BaseVerticalAnchorable) constrainScope.f11226f).b(verticalAnchor2, f3);
        CLObject cLObject = constrainScope.f11223b;
        cLObject.getClass();
        cLObject.R("hRtlBias", new CLNumber(0.5f));
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/constraintlayout/compose/ConstrainScope$FloatProperty;", "Lkotlin/properties/ObservableProperty;", "", "initialValue", "", "nameOverride", "<init>", "(Landroidx/constraintlayout/compose/ConstrainScope;FLjava/lang/String;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class FloatProperty extends ObservableProperty<Float> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f11231b;

        public FloatProperty(float f2, String str) {
            super(Float.valueOf(f2));
            this.f11231b = str;
        }

        @Override // kotlin.properties.ObservableProperty
        public final void c(KProperty kProperty, Object obj, Object obj2) {
            ((Number) obj).floatValue();
            float fFloatValue = ((Number) obj2).floatValue();
            if (Float.isNaN(fFloatValue)) {
                return;
            }
            CLObject cLObject = ConstrainScope.this.f11223b;
            String f72049j = this.f11231b;
            if (f72049j == null) {
                f72049j = kProperty.getF72049j();
            }
            cLObject.getClass();
            cLObject.R(f72049j, new CLNumber(fFloatValue));
        }

        public /* synthetic */ FloatProperty(ConstrainScope constrainScope, float f2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(f2, (i2 & 2) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/constraintlayout/compose/ConstrainScope$DpProperty;", "Lkotlin/properties/ObservableProperty;", "Landroidx/compose/ui/unit/Dp;", "initialValue", "", "nameOverride", "<init>", "(Landroidx/constraintlayout/compose/ConstrainScope;FLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class DpProperty extends ObservableProperty<Dp> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f11229b;

        public DpProperty(float f2, String str, DefaultConstructorMarker defaultConstructorMarker) {
            super(new Dp(f2));
            this.f11229b = str;
        }

        @Override // kotlin.properties.ObservableProperty
        public final void c(KProperty kProperty, Object obj, Object obj2) {
            float f2 = ((Dp) obj).f11006b;
            float f3 = ((Dp) obj2).f11006b;
            if (Float.isNaN(f3)) {
                return;
            }
            CLObject cLObject = ConstrainScope.this.f11223b;
            String f72049j = this.f11229b;
            if (f72049j == null) {
                f72049j = kProperty.getF72049j();
            }
            cLObject.getClass();
            cLObject.R(f72049j, new CLNumber(f3));
        }

        public /* synthetic */ DpProperty(ConstrainScope constrainScope, float f2, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(f2, (i2 & 2) != 0 ? null : str, null);
        }
    }
}
