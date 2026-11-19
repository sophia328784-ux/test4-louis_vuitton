package com.vuitton.android.presentation.screen.account.myinformation;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.mylv.MyInformationMonitoring;
import com.vuitton.android.domain.usecase.account.profile.UpdateProfileInfoUseCase;
import com.vuitton.android.presentation.screen.account.addresseditor.error.AddressErrorMessageMapper;
import com.vuitton.foundation.model.domain.model.account.UpdateProfileInfoParam;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$updateProfileInfo$1", f = "MyInformationViewModelImpl.kt", l = {532, 534, 536}, m = "invokeSuspend", v = 2)
final class MyInformationViewModelImpl$updateProfileInfo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f52580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f52581c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModelImpl f52582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f52583f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$updateProfileInfo$1(MyInformationViewModelImpl myInformationViewModelImpl, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f52582e = myInformationViewModelImpl;
        this.f52583f = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyInformationViewModelImpl$updateProfileInfo$1(this.f52582e, this.f52583f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyInformationViewModelImpl$updateProfileInfo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:36:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:50:0x010f A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:48:0x0100, B:50:0x010f, B:55:0x0118, B:57:0x0124, B:59:0x012e, B:61:0x0134, B:63:0x013a, B:65:0x0140, B:68:0x0149), top: B:77:0x0100 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0118 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:48:0x0100, B:50:0x010f, B:55:0x0118, B:57:0x0124, B:59:0x012e, B:61:0x0134, B:63:0x013a, B:65:0x0140, B:68:0x0149), top: B:77:0x0100 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0124 A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:48:0x0100, B:50:0x010f, B:55:0x0118, B:57:0x0124, B:59:0x012e, B:61:0x0134, B:63:0x013a, B:65:0x0140, B:68:0x0149), top: B:77:0x0100 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x012e A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:48:0x0100, B:50:0x010f, B:55:0x0118, B:57:0x0124, B:59:0x012e, B:61:0x0134, B:63:0x013a, B:65:0x0140, B:68:0x0149), top: B:77:0x0100 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0133  */
    /* JADX WARN: Code duplicated, block: B:63:0x013a A[Catch: all -> 0x0116, TryCatch #0 {all -> 0x0116, blocks: (B:48:0x0100, B:50:0x010f, B:55:0x0118, B:57:0x0124, B:59:0x012e, B:61:0x0134, B:63:0x013a, B:65:0x0140, B:68:0x0149), top: B:77:0x0100 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x013f  */
    /* JADX WARN: Code duplicated, block: B:67:0x0148  */
    /* JADX WARN: Code duplicated, block: B:71:0x015b  */
    /* JADX WARN: Code duplicated, block: B:72:0x016a  */
    /* JADX WARN: Code duplicated, block: B:77:0x0100 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        MonitorAction monitorAction;
        Object failure;
        Object failure2;
        SharedFlowImpl sharedFlowImpl;
        MyInformationSideEffect.EditMyInfo.EditionSuccess editionSuccess;
        Object obj2;
        MonitorAction monitorAction2;
        Throwable thA;
        Object value2;
        Response response;
        ResponseBody responseBody;
        JSONObject jSONObject;
        JSONArray jSONArray;
        JSONObject jSONObject2;
        String string;
        String string2;
        String string3;
        MyInformationViewModelImpl myInformationViewModelImpl = this.f52582e;
        MutableStateFlow mutableStateFlow = myInformationViewModelImpl.x;
        AddressErrorMessageMapper addressErrorMessageMapper = myInformationViewModelImpl.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = myInformationViewModelImpl.f52528b.a(myInformationViewModelImpl.s, MyInformationMonitoring.Action.EditProfile.f48921a);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            this.f52580b = dynatraceMonitorActionA;
            this.d = 1;
            Object objBc = myInformationViewModelImpl.Bc(this);
            if (objBc != coroutineSingletons) {
                monitorAction = dynatraceMonitorActionA;
                failure = objBc;
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            monitorAction = this.f52580b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        } else {
            if (i2 == 2) {
                monitorAction = this.f52580b;
                ResultKt.b(obj);
                failure2 = ((Result) obj).f71708b;
                monitorAction.b();
                Result.Companion companion = Result.INSTANCE;
                if (!(failure2 instanceof Result.Failure)) {
                    sharedFlowImpl = myInformationViewModelImpl.v;
                    editionSuccess = MyInformationSideEffect.EditMyInfo.EditionSuccess.f52523a;
                    this.f52580b = monitorAction;
                    this.f52581c = failure2;
                    this.d = 3;
                    if (sharedFlowImpl.emit(editionSuccess, this) != coroutineSingletons) {
                        obj2 = failure2;
                        monitorAction2 = monitorAction;
                    }
                    return coroutineSingletons;
                }
                thA = Result.a(failure2);
                if (thA != null) {
                    monitorAction.d(new MyInformationMonitoring.Error.EditProfileError(thA));
                    defpackage.a.y("Error while updating profile info: ", thA.getMessage(), myInformationViewModelImpl.f52527a, "MyInformationViewModelImpl", null);
                    if (thA.getCause() instanceof HttpException) {
                        Throwable cause = thA.getCause();
                        cause.getClass();
                        response = ((HttpException) cause).d;
                        if (response != null) {
                            responseBody = response.f79451c;
                        } else {
                            responseBody = null;
                        }
                        if (responseBody != null) {
                            try {
                                jSONObject = new JSONObject(responseBody.string());
                                if (jSONObject.has("success") || !jSONObject.getBoolean("success")) {
                                    jSONArray = jSONObject.getJSONArray("formExceptions");
                                    if (jSONArray.length() > 0) {
                                        jSONObject2 = jSONArray.getJSONObject(0);
                                        if (jSONObject2.has("message")) {
                                            string = jSONObject2.getString("message");
                                        } else {
                                            string = null;
                                        }
                                        if (jSONObject2.has("localizedMessage")) {
                                            string2 = jSONObject2.getString("localizedMessage");
                                        } else {
                                            string2 = null;
                                        }
                                        string3 = jSONObject2.getString("errorCode");
                                        if (string3 == null) {
                                            string3 = "";
                                        }
                                        addressErrorMessageMapper.getClass();
                                        myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a(string3, string, string2), false);
                                    } else {
                                        String message = thA.getMessage();
                                        addressErrorMessageMapper.getClass();
                                        myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message, null), false);
                                    }
                                }
                            } catch (Throwable th) {
                                Result.Companion companion2 = Result.INSTANCE;
                                new Result.Failure(th);
                            }
                        } else {
                            String message2 = thA.getMessage();
                            addressErrorMessageMapper.getClass();
                            myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message2, null), false);
                        }
                    } else {
                        String message3 = thA.getMessage();
                        addressErrorMessageMapper.getClass();
                        myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message3, null), false);
                    }
                }
                do {
                    value2 = mutableStateFlow.getValue();
                    ((Boolean) value2).getClass();
                } while (!mutableStateFlow.i(value2, Boolean.FALSE));
                return Unit.f71739a;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.f52581c;
            monitorAction2 = this.f52580b;
            ResultKt.b(obj);
        }
        monitorAction = monitorAction2;
        failure2 = obj2;
        thA = Result.a(failure2);
        if (thA != null) {
            monitorAction.d(new MyInformationMonitoring.Error.EditProfileError(thA));
            defpackage.a.y("Error while updating profile info: ", thA.getMessage(), myInformationViewModelImpl.f52527a, "MyInformationViewModelImpl", null);
            if (thA.getCause() instanceof HttpException) {
                Throwable cause2 = thA.getCause();
                cause2.getClass();
                response = ((HttpException) cause2).d;
                if (response != null) {
                    responseBody = response.f79451c;
                } else {
                    responseBody = null;
                }
                if (responseBody != null) {
                    jSONObject = new JSONObject(responseBody.string());
                    if (jSONObject.has("success")) {
                        jSONArray = jSONObject.getJSONArray("formExceptions");
                        if (jSONArray.length() > 0) {
                            jSONObject2 = jSONArray.getJSONObject(0);
                            if (jSONObject2.has("message")) {
                                string = jSONObject2.getString("message");
                            } else {
                                string = null;
                            }
                            if (jSONObject2.has("localizedMessage")) {
                                string2 = jSONObject2.getString("localizedMessage");
                            } else {
                                string2 = null;
                            }
                            string3 = jSONObject2.getString("errorCode");
                            if (string3 == null) {
                                string3 = "";
                            }
                            addressErrorMessageMapper.getClass();
                            myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a(string3, string, string2), false);
                        } else {
                            String message4 = thA.getMessage();
                            addressErrorMessageMapper.getClass();
                            myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message4, null), false);
                        }
                    } else {
                        jSONArray = jSONObject.getJSONArray("formExceptions");
                        if (jSONArray.length() > 0) {
                            jSONObject2 = jSONArray.getJSONObject(0);
                            if (jSONObject2.has("message")) {
                                string = jSONObject2.getString("message");
                            } else {
                                string = null;
                            }
                            if (jSONObject2.has("localizedMessage")) {
                                string2 = jSONObject2.getString("localizedMessage");
                            } else {
                                string2 = null;
                            }
                            string3 = jSONObject2.getString("errorCode");
                            if (string3 == null) {
                                string3 = "";
                            }
                            addressErrorMessageMapper.getClass();
                            myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a(string3, string, string2), false);
                        } else {
                            String message5 = thA.getMessage();
                            addressErrorMessageMapper.getClass();
                            myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message5, null), false);
                        }
                    }
                } else {
                    String message6 = thA.getMessage();
                    addressErrorMessageMapper.getClass();
                    myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message6, null), false);
                }
            } else {
                String message7 = thA.getMessage();
                addressErrorMessageMapper.getClass();
                myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message7, null), false);
            }
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
        Function1 function1 = this.f52583f;
        Result.Companion companion3 = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                failure = (UpdateProfileInfoParam) function1.invoke((List) failure);
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                failure = new Result.Failure(th2);
            }
        }
        Throwable thA2 = Result.a(failure);
        if (thA2 == null) {
            ResultKt.b(failure);
            UpdateProfileInfoUseCase updateProfileInfoUseCase = myInformationViewModelImpl.n;
            this.f52580b = monitorAction;
            this.f52581c = null;
            this.d = 2;
            failure2 = updateProfileInfoUseCase.a((UpdateProfileInfoParam) failure, this);
            if (failure2 != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        failure2 = new Result.Failure(thA2);
        monitorAction.b();
        Result.Companion companion5 = Result.INSTANCE;
        if (!(failure2 instanceof Result.Failure)) {
            sharedFlowImpl = myInformationViewModelImpl.v;
            editionSuccess = MyInformationSideEffect.EditMyInfo.EditionSuccess.f52523a;
            this.f52580b = monitorAction;
            this.f52581c = failure2;
            this.d = 3;
            if (sharedFlowImpl.emit(editionSuccess, this) != coroutineSingletons) {
                obj2 = failure2;
                monitorAction2 = monitorAction;
                monitorAction = monitorAction2;
                failure2 = obj2;
            }
            return coroutineSingletons;
        }
        thA = Result.a(failure2);
        if (thA != null) {
            monitorAction.d(new MyInformationMonitoring.Error.EditProfileError(thA));
            defpackage.a.y("Error while updating profile info: ", thA.getMessage(), myInformationViewModelImpl.f52527a, "MyInformationViewModelImpl", null);
            if (thA.getCause() instanceof HttpException) {
                Throwable cause3 = thA.getCause();
                cause3.getClass();
                response = ((HttpException) cause3).d;
                if (response != null) {
                    responseBody = response.f79451c;
                } else {
                    responseBody = null;
                }
                if (responseBody != null) {
                    jSONObject = new JSONObject(responseBody.string());
                    if (jSONObject.has("success")) {
                        jSONArray = jSONObject.getJSONArray("formExceptions");
                        if (jSONArray.length() > 0) {
                            jSONObject2 = jSONArray.getJSONObject(0);
                            if (jSONObject2.has("message")) {
                                string = jSONObject2.getString("message");
                            } else {
                                string = null;
                            }
                            if (jSONObject2.has("localizedMessage")) {
                                string2 = jSONObject2.getString("localizedMessage");
                            } else {
                                string2 = null;
                            }
                            string3 = jSONObject2.getString("errorCode");
                            if (string3 == null) {
                                string3 = "";
                            }
                            addressErrorMessageMapper.getClass();
                            myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a(string3, string, string2), false);
                        } else {
                            String message8 = thA.getMessage();
                            addressErrorMessageMapper.getClass();
                            myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message8, null), false);
                        }
                    } else {
                        jSONArray = jSONObject.getJSONArray("formExceptions");
                        if (jSONArray.length() > 0) {
                            jSONObject2 = jSONArray.getJSONObject(0);
                            if (jSONObject2.has("message")) {
                                string = jSONObject2.getString("message");
                            } else {
                                string = null;
                            }
                            if (jSONObject2.has("localizedMessage")) {
                                string2 = jSONObject2.getString("localizedMessage");
                            } else {
                                string2 = null;
                            }
                            string3 = jSONObject2.getString("errorCode");
                            if (string3 == null) {
                                string3 = "";
                            }
                            addressErrorMessageMapper.getClass();
                            myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a(string3, string, string2), false);
                        } else {
                            String message9 = thA.getMessage();
                            addressErrorMessageMapper.getClass();
                            myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message9, null), false);
                        }
                    }
                } else {
                    String message10 = thA.getMessage();
                    addressErrorMessageMapper.getClass();
                    myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message10, null), false);
                }
            } else {
                String message11 = thA.getMessage();
                addressErrorMessageMapper.getClass();
                myInformationViewModelImpl.Dc(AddressErrorMessageMapper.a("", message11, null), false);
            }
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }
}
