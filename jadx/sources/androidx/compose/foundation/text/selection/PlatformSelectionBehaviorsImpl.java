package androidx.compose.foundation.text.selection;

import android.content.Context;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;", "Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/compose/foundation/text/selection/SelectedTextType;", "selectedTextType", "Landroidx/compose/ui/text/intl/LocaleList;", "localeList", "<init>", "(Lkotlin/coroutines/CoroutineContext;Landroid/content/Context;Landroidx/compose/foundation/text/selection/SelectedTextType;Landroidx/compose/ui/text/intl/LocaleList;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PlatformSelectionBehaviorsImpl implements PlatformSelectionBehaviors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineContext f6355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f6356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SelectedTextType f6357c;
    public final LocaleList d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TextClassifier f6359f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutexImpl f6358e = MutexKt.a();
    public final MutableState g = SnapshotStateKt.g(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f6360h = new Object();

    public PlatformSelectionBehaviorsImpl(CoroutineContext coroutineContext, Context context, SelectedTextType selectedTextType, LocaleList localeList) {
        this.f6355a = coroutineContext;
        this.f6356b = context;
        this.f6357c = selectedTextType;
        this.d = localeList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public static final Object d(PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, CharSequence charSequence, long j2, TextClassifier textClassifier, ContinuationImpl continuationImpl) {
        PlatformSelectionBehaviorsImpl$classifyText$1 platformSelectionBehaviorsImpl$classifyText$1;
        long j3;
        CharSequence charSequence2;
        TextClassifier textClassifier2;
        MutexImpl mutexImpl;
        TextClassification textClassificationClassifyText;
        long j4;
        CharSequence charSequence3;
        MutableState mutableState = platformSelectionBehaviorsImpl.g;
        MutexImpl mutexImpl2 = platformSelectionBehaviorsImpl.f6358e;
        if (continuationImpl instanceof PlatformSelectionBehaviorsImpl$classifyText$1) {
            platformSelectionBehaviorsImpl$classifyText$1 = (PlatformSelectionBehaviorsImpl$classifyText$1) continuationImpl;
            int i2 = platformSelectionBehaviorsImpl$classifyText$1.f6365h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                platformSelectionBehaviorsImpl$classifyText$1.f6365h = i2 - Integer.MIN_VALUE;
            } else {
                platformSelectionBehaviorsImpl$classifyText$1 = new PlatformSelectionBehaviorsImpl$classifyText$1(platformSelectionBehaviorsImpl, continuationImpl);
            }
        } else {
            platformSelectionBehaviorsImpl$classifyText$1 = new PlatformSelectionBehaviorsImpl$classifyText$1(platformSelectionBehaviorsImpl, continuationImpl);
        }
        Object obj = platformSelectionBehaviorsImpl$classifyText$1.f6364f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = platformSelectionBehaviorsImpl$classifyText$1.f6365h;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                platformSelectionBehaviorsImpl$classifyText$1.f6361b = charSequence;
                platformSelectionBehaviorsImpl$classifyText$1.f6362c = textClassifier;
                platformSelectionBehaviorsImpl$classifyText$1.d = mutexImpl2;
                j3 = j2;
                platformSelectionBehaviorsImpl$classifyText$1.f6363e = j3;
                platformSelectionBehaviorsImpl$classifyText$1.f6365h = 1;
                if (mutexImpl2.c(platformSelectionBehaviorsImpl$classifyText$1) != coroutineSingletons) {
                    charSequence2 = charSequence;
                    textClassifier2 = textClassifier;
                    mutexImpl = mutexImpl2;
                }
                return coroutineSingletons;
            }
            if (i3 == 1) {
                j3 = platformSelectionBehaviorsImpl$classifyText$1.f6363e;
                mutexImpl = platformSelectionBehaviorsImpl$classifyText$1.d;
                textClassifier2 = (TextClassifier) platformSelectionBehaviorsImpl$classifyText$1.f6362c;
                charSequence2 = platformSelectionBehaviorsImpl$classifyText$1.f6361b;
                ResultKt.b(obj);
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                j4 = platformSelectionBehaviorsImpl$classifyText$1.f6363e;
                mutexImpl2 = platformSelectionBehaviorsImpl$classifyText$1.d;
                textClassificationClassifyText = (TextClassification) platformSelectionBehaviorsImpl$classifyText$1.f6362c;
                charSequence3 = platformSelectionBehaviorsImpl$classifyText$1.f6361b;
                ResultKt.b(obj);
            }
            try {
                ((SnapshotMutableStateImpl) mutableState).setValue(new TextClassificationResult(charSequence3, j4, textClassificationClassifyText, null));
                return Unit.f71739a;
            } finally {
                mutexImpl2.d(null);
            }
            TextClassificationResult textClassificationResult = (TextClassificationResult) ((SnapshotMutableStateImpl) mutableState).getF10755b();
            if (textClassificationResult != null) {
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = PlatformSelectionBehaviors_androidKt.f6384a;
                if (TextRange.b(j3, textClassificationResult.f6449b) && Intrinsics.c(charSequence2, textClassificationResult.f6448a)) {
                    Unit unit = Unit.f71739a;
                    mutexImpl.d(null);
                    return unit;
                }
            }
            mutexImpl.d(null);
            textClassificationClassifyText = textClassifier2.classifyText(new TextClassification.Request.Builder(charSequence2, TextRange.f(j3), TextRange.e(j3)).setDefaultLocales(platformSelectionBehaviorsImpl.e()).build());
            platformSelectionBehaviorsImpl$classifyText$1.f6361b = charSequence2;
            platformSelectionBehaviorsImpl$classifyText$1.f6362c = textClassificationClassifyText;
            platformSelectionBehaviorsImpl$classifyText$1.d = mutexImpl2;
            platformSelectionBehaviorsImpl$classifyText$1.f6363e = j3;
            platformSelectionBehaviorsImpl$classifyText$1.f6365h = 2;
            if (mutexImpl2.c(platformSelectionBehaviorsImpl$classifyText$1) != coroutineSingletons) {
                j4 = j3;
                charSequence3 = charSequence2;
                ((SnapshotMutableStateImpl) mutableState).setValue(new TextClassificationResult(charSequence3, j4, textClassificationClassifyText, null));
                return Unit.f71739a;
            }
            return coroutineSingletons;
        } catch (Throwable th) {
            mutexImpl.d(null);
            throw th;
        }
    }

    @Override // androidx.compose.foundation.text.selection.PlatformSelectionBehaviors
    public final Object a(String str, long j2, Continuation continuation) throws Throwable {
        Object objF;
        SuspendLambda suspendLambda = (SuspendLambda) continuation;
        if (str.length() == 0 || TextRange.c(j2)) {
            objF = Unit.f71739a;
        } else {
            objF = BuildersKt.f(this.f6355a, new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(this, new PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2(j2, this, str, null), null), suspendLambda);
        }
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.text.selection.PlatformSelectionBehaviors
    public final Object b(String str, long j2, Continuation continuation) throws Throwable {
        Object objF;
        SuspendLambda suspendLambda = (SuspendLambda) continuation;
        if (str.length() == 0 || TextRange.c(j2)) {
            objF = Unit.f71739a;
        } else {
            objF = BuildersKt.f(this.f6355a, new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(this, new PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2(j2, this, str, null), null), suspendLambda);
        }
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }

    @Override // androidx.compose.foundation.text.selection.PlatformSelectionBehaviors
    public final Object c(CharSequence charSequence, long j2, Continuation continuation) {
        if (charSequence.length() == 0 || TextRange.c(j2)) {
            return null;
        }
        PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2 platformSelectionBehaviorsImpl$requireTextClassificationSession$2 = new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(this, new PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(j2, this, charSequence, null), null);
        return BuildersKt.f(this.f6355a, platformSelectionBehaviorsImpl$requireTextClassificationSession$2, (SuspendLambda) continuation);
    }

    public final android.os.LocaleList e() {
        LocaleList localeList = this.d;
        if (localeList == null) {
            Locale.f10870b.getClass();
            return new android.os.LocaleList(Locale.Companion.a().f10871a);
        }
        ArrayList arrayList = new ArrayList(CollectionsKt.t(localeList, 10));
        Iterator it = localeList.f10873b.iterator();
        while (it.hasNext()) {
            arrayList.add(((Locale) it.next()).f10871a);
        }
        java.util.Locale[] localeArr = (java.util.Locale[]) arrayList.toArray(new java.util.Locale[0]);
        return new android.os.LocaleList((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length));
    }
}
