package com.vuitton.core.infrastructure.data.forms.datasource;

import com.vuitton.core.infrastructure.data.forms.models.DispatchCivilityDto;
import com.vuitton.core.infrastructure.data.forms.reader.FileReader;
import java.io.InputStreamReader;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: renamed from: com.vuitton.core.infrastructure.data.forms.datasource.CivilityDataSource$getCivilityDtoList-gIAlu-s$$inlined$getCachedCivilities-gIAlu-s$5, reason: invalid class name */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"T", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/Result;", "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)Lkotlin/Result;"}, k = 3, mv = {2, 3, 0})
@DebugMetadata(c = "com.vuitton.core.infrastructure.data.forms.reader.FileReader$readJson$2", f = "FileReader.kt", l = {}, m = "invokeSuspend", v = 2)
public final class CivilityDataSource$getCivilityDtoListgIAlus$$inlined$getCachedCivilitiesgIAlus$5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends List<? extends DispatchCivilityDto>>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f65935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f65936c;
    public final /* synthetic */ FileReader d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CivilityDataSource$getCivilityDtoListgIAlus$$inlined$getCachedCivilitiesgIAlus$5(String str, FileReader fileReader, Continuation continuation) {
        super(2, continuation);
        this.f65936c = str;
        this.d = fileReader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CivilityDataSource$getCivilityDtoListgIAlus$$inlined$getCachedCivilitiesgIAlus$5 civilityDataSource$getCivilityDtoListgIAlus$$inlined$getCachedCivilitiesgIAlus$5 = new CivilityDataSource$getCivilityDtoListgIAlus$$inlined$getCachedCivilitiesgIAlus$5(this.f65936c, this.d, continuation);
        civilityDataSource$getCivilityDtoListgIAlus$$inlined$getCachedCivilitiesgIAlus$5.f65935b = obj;
        return civilityDataSource$getCivilityDtoListgIAlus$$inlined$getCachedCivilitiesgIAlus$5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CivilityDataSource$getCivilityDtoListgIAlus$$inlined$getCachedCivilitiesgIAlus$5) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        CoroutineScope coroutineScope = (CoroutineScope) this.f65935b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        try {
            String strB = TextStreamsKt.b(new InputStreamReader(coroutineScope.getClass().getClassLoader().getResourceAsStream(this.f65936c)));
            Result.Companion companion = Result.INSTANCE;
            Json json = this.d.f66137a;
            json.getClass();
            failure = json.b(new ArrayListSerializer(DispatchCivilityDto.INSTANCE.serializer()), strB);
        } catch (Exception e2) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(e2);
        }
        return new Result(failure);
    }
}
