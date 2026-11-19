package com.vuitton.android.data.datasource.pass;

import android.content.SharedPreferences;
import com.vuitton.android.data.dto.pass.ContentDispositionName;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pass.PassLocalDataSource$resetCache$2$1", f = "PassLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class PassLocalDataSource$resetCache$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PassLocalDataSource f44206b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassLocalDataSource$resetCache$2$1(PassLocalDataSource passLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44206b = passLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PassLocalDataSource$resetCache$2$1(this.f44206b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PassLocalDataSource$resetCache$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        PassLocalDataSource passLocalDataSource = this.f44206b;
        passLocalDataSource.d = false;
        File cacheDir = passLocalDataSource.f44183b.getCacheDir();
        EnumEntries enumEntriesA = ContentDispositionName.a();
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = enumEntriesA.iterator();
        while (it.hasNext()) {
            String value = ((ContentDispositionName) it.next()).getValue();
            if (value != null) {
                arrayList.add(value);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            File file = new File(cacheDir, (String) it2.next());
            if (file.exists()) {
                file.delete();
            }
            SharedPreferences.Editor editorEdit = passLocalDataSource.f44182a.edit();
            editorEdit.putBoolean("PassLocalDataSource", false);
            editorEdit.commit();
        }
        return Unit.f71739a;
    }
}
