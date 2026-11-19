package androidx.compose.foundation.text.selection;

import android.os.Build;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextSelection;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/compose/ui/text/TextRange;", "Landroid/view/textclassifier/TextClassifier;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2", f = "PlatformSelectionBehaviors.android.kt", l = {369, 159}, m = "invokeSuspend", v = 1)
final class PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 extends SuspendLambda implements Function2<TextClassifier, Continuation<? super TextRange>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutexImpl f6377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PlatformSelectionBehaviorsImpl f6378c;
    public CharSequence d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f6379e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6380f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ CharSequence f6381h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ long f6382i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ PlatformSelectionBehaviorsImpl f6383j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(long j2, PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, CharSequence charSequence, Continuation continuation) {
        super(2, continuation);
        this.f6381h = charSequence;
        this.f6382i = j2;
        this.f6383j = platformSelectionBehaviorsImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 = new PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(this.f6382i, this.f6383j, this.f6381h, continuation);
        platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2.g = obj;
        return platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2) create((TextClassifier) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CharSequence charSequence;
        long j2;
        MutexImpl mutexImpl;
        TextSelection textSelection;
        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl;
        long j3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6380f;
        if (i2 == 0) {
            ResultKt.b(obj);
            TextClassifier textClassifier = (TextClassifier) this.g;
            long j4 = this.f6382i;
            int iF = TextRange.f(j4);
            int iE = TextRange.e(j4);
            charSequence = this.f6381h;
            TextSelection.Request.Builder builder = new TextSelection.Request.Builder(charSequence, iF, iE);
            PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl2 = this.f6383j;
            TextSelection.Request.Builder defaultLocales = builder.setDefaultLocales(platformSelectionBehaviorsImpl2.e());
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 31) {
                defaultLocales.setIncludeTextClassification(true);
            }
            TextSelection textSelectionSuggestSelection = textClassifier.suggestSelection(defaultLocales.build());
            long jA = TextRangeKt.a(textSelectionSuggestSelection.getSelectionStartIndex(), textSelectionSuggestSelection.getSelectionEndIndex());
            if (i3 < 31 || textSelectionSuggestSelection.getTextClassification() == null) {
                this.f6379e = jA;
                this.f6380f = 2;
                if (PlatformSelectionBehaviorsImpl.d(platformSelectionBehaviorsImpl2, charSequence, jA, textClassifier, this) != coroutineSingletons) {
                    j2 = jA;
                    j3 = j2;
                }
            } else {
                mutexImpl = platformSelectionBehaviorsImpl2.f6358e;
                this.g = textSelectionSuggestSelection;
                this.f6377b = mutexImpl;
                this.f6378c = platformSelectionBehaviorsImpl2;
                this.d = charSequence;
                this.f6379e = jA;
                this.f6380f = 1;
                if (mutexImpl.c(this) != coroutineSingletons) {
                    textSelection = textSelectionSuggestSelection;
                    platformSelectionBehaviorsImpl = platformSelectionBehaviorsImpl2;
                    j3 = jA;
                    TextClassification textClassification = textSelection.getTextClassification();
                    textClassification.getClass();
                    ((SnapshotMutableStateImpl) platformSelectionBehaviorsImpl.g).setValue(new TextClassificationResult(charSequence, j3, textClassification, null));
                }
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            long j5 = this.f6379e;
            CharSequence charSequence2 = this.d;
            platformSelectionBehaviorsImpl = this.f6378c;
            MutexImpl mutexImpl2 = this.f6377b;
            textSelection = (TextSelection) this.g;
            ResultKt.b(obj);
            j3 = j5;
            charSequence = charSequence2;
            mutexImpl = mutexImpl2;
            try {
                TextClassification textClassification2 = textSelection.getTextClassification();
                textClassification2.getClass();
                ((SnapshotMutableStateImpl) platformSelectionBehaviorsImpl.g).setValue(new TextClassificationResult(charSequence, j3, textClassification2, null));
            } finally {
                mutexImpl.d(null);
            }
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j2 = this.f6379e;
            ResultKt.b(obj);
            j3 = j2;
        }
        return new TextRange(j3);
    }
}
