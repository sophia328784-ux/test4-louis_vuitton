package androidx.compose.ui.semantics;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "a", "Landroidx/compose/ui/semantics/SemanticsNode;", NBSSpanMetricUnit.Bit, "invoke", "(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/semantics/SemanticsNode;)Ljava/lang/Integer;"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class SemanticsSortKt$UnmergedConfigComparator$1 extends Lambda implements Function2<SemanticsNode, SemanticsNode, Integer> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SemanticsSortKt$UnmergedConfigComparator$1 f10369c = new SemanticsSortKt$UnmergedConfigComparator$1(2);

    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsSortKt$UnmergedConfigComparator$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Float;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    final class AnonymousClass1 extends Lambda implements Function0<Float> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f10370c = new AnonymousClass1(0);

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final /* bridge */ /* synthetic */ Object mo47invoke() {
            return Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.semantics.SemanticsSortKt$UnmergedConfigComparator$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "", "invoke", "()Ljava/lang/Float;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    final class AnonymousClass2 extends Lambda implements Function0<Float> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass2 f10371c = new AnonymousClass2(0);

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final /* bridge */ /* synthetic */ Object mo47invoke() {
            return Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SemanticsConfiguration semanticsConfiguration = ((SemanticsNode) obj).d;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.u;
        return Integer.valueOf(Float.compare(((Number) semanticsConfiguration.h(semanticsPropertyKey, AnonymousClass1.f10370c)).floatValue(), ((Number) ((SemanticsNode) obj2).d.h(semanticsPropertyKey, AnonymousClass2.f10371c)).floatValue()));
    }
}
