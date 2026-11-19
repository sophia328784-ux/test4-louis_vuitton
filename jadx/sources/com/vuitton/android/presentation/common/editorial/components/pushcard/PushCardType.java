package com.vuitton.android.presentation.common.editorial.components.pushcard;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType[]) from 0x0026: INVOKE (r0v1 com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rR\"\u0010\u0005\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0002\b\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0002\b\u00048\u0006¢\u0006\f\n\u0004\b\t\u0010\u0006\u001a\u0004\b\n\u0010\bR\"\u0010\u000b\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0002\b\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\bj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;", "", "Lkotlin/Function0;", "Landroidx/compose/ui/graphics/Color;", "Landroidx/compose/runtime/Composable;", "contentColor", "Lkotlin/jvm/functions/Function2;", NBSSpanMetricUnit.Bit, "()Lkotlin/jvm/functions/Function2;", "containerColor", "a", "descriptionColor", "c", "Companion", "DEFAULT", "INVERT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PushCardType {
    DEFAULT(AnonymousClass1.f50768b, AnonymousClass2.f50769b, AnonymousClass3.f50770b),
    INVERT(AnonymousClass4.f50771b, AnonymousClass5.f50772b, AnonymousClass6.f50773b);

    private static final /* synthetic */ EnumEntries $ENTRIES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Function2<Composer, Integer, Color> containerColor;
    private final Function2<Composer, Integer, Color> contentColor;
    private final Function2<Composer, Integer, Color> descriptionColor;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass1 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass1 f50768b = new AnonymousClass1();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(377848830);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
            composer.F();
            return new Color(j2);
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass2 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass2 f50769b = new AnonymousClass2();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(412672767);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
            composer.F();
            return new Color(j2);
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType$3, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass3 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass3 f50770b = new AnonymousClass3();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(447496704);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.n;
            composer.F();
            return new Color(j2);
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType$4, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass4 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass4 f50771b = new AnonymousClass4();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(-1076423351);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
            composer.F();
            return new Color(j2);
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType$5, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass5 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass5 f50772b = new AnonymousClass5();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(1280004648);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
            composer.F();
            return new Color(j2);
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.common.editorial.components.pushcard.PushCardType$6, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass6 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass6 f50773b = new AnonymousClass6();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(-658534649);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.l;
            composer.F();
            return new Color(j2);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f50774a;

            static {
                int[] iArr = new int[LVColorScheme.values().length];
                try {
                    iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LVColorScheme.INVERT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f50774a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static PushCardType a(LVColorScheme lVColorScheme) {
            lVColorScheme.getClass();
            int i2 = WhenMappings.f50774a[lVColorScheme.ordinal()];
            if (i2 == 1) {
                return PushCardType.DEFAULT;
            }
            if (i2 == 2) {
                return PushCardType.INVERT;
            }
            v40.g();
            return null;
        }
    }

    static {
        $ENTRIES = EnumEntriesKt.a(new PushCardType[]{r0, r1});
    }

    public PushCardType(Function2 function2, Function2 function3, Function2 function4) {
        super(str, i);
        this.contentColor = function2;
        this.containerColor = function3;
        this.descriptionColor = function4;
    }

    public static PushCardType valueOf(String str) {
        return (PushCardType) Enum.valueOf(PushCardType.class, str);
    }

    public static PushCardType[] values() {
        return (PushCardType[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final Function2 getContainerColor() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Function2 getContentColor() {
        return this.contentColor;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final Function2 getDescriptionColor() {
        return this.descriptionColor;
    }
}
