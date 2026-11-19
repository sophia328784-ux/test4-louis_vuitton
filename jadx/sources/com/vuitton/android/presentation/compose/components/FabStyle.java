package com.vuitton.android.presentation.compose.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.compose.components.FabStyle[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.compose.components.FabStyle[]) from 0x0022: INVOKE (r0v1 com.vuitton.android.presentation.compose.components.FabStyle[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\"\u0010\u0005\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0002\b\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0002\b\u00048\u0006¢\u0006\f\n\u0004\b\t\u0010\u0006\u001a\u0004\b\n\u0010\bj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/compose/components/FabStyle;", "", "Lkotlin/Function0;", "Landroidx/compose/ui/graphics/Color;", "Landroidx/compose/runtime/Composable;", "containerColor", "Lkotlin/jvm/functions/Function2;", "a", "()Lkotlin/jvm/functions/Function2;", "contentColor", NBSSpanMetricUnit.Bit, "DEFAULT", "INVERTED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FabStyle {
    DEFAULT(AnonymousClass1.f50955b, AnonymousClass2.f50956b),
    INVERTED(AnonymousClass3.f50957b, AnonymousClass4.f50958b);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final Function2<Composer, Integer, Color> containerColor;
    private final Function2<Composer, Integer, Color> contentColor;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.compose.components.FabStyle$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass1 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass1 f50955b = new AnonymousClass1();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(-1705868877);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
            composer.F();
            return new Color(j2);
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.compose.components.FabStyle$2, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass2 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass2 f50956b = new AnonymousClass2();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(685638324);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
            composer.F();
            return new Color(j2);
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.compose.components.FabStyle$3, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass3 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass3 f50957b = new AnonymousClass3();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(1995436317);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
            composer.F();
            return new Color(j2);
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.compose.components.FabStyle$4, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class AnonymousClass4 implements Function2<Composer, Integer, Color> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass4 f50958b = new AnonymousClass4();

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Composer composer = (Composer) obj;
            ((Number) obj2).intValue();
            composer.L(-1177251780);
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
            composer.F();
            return new Color(j2);
        }
    }

    static {
        $ENTRIES = EnumEntriesKt.a(fabStyleArr);
    }

    public FabStyle(Function2 function2, Function2 function3) {
        super(str, i);
        this.containerColor = function2;
        this.contentColor = function3;
    }

    public static FabStyle valueOf(String str) {
        return (FabStyle) Enum.valueOf(FabStyle.class, str);
    }

    public static FabStyle[] values() {
        return (FabStyle[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final Function2 getContainerColor() {
        return this.containerColor;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Function2 getContentColor() {
        return this.contentColor;
    }
}
