package com.linecorp.linesdk.openchat.ui;

import android.content.SharedPreferences;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.linecorp.linesdk.api.LineApiClient;
import com.linecorp.linesdk.openchat.OpenChatCategory;
import com.linecorp.linesdk.openchat.OpenChatParameters;
import defpackage.md;
import defpackage.tg0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel;", "Landroidx/lifecycle/ViewModel;", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lcom/linecorp/linesdk/api/LineApiClient;", "lineApiClient", "<init>", "(Landroid/content/SharedPreferences;Lcom/linecorp/linesdk/api/LineApiClient;)V", "Companion", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OpenChatInfoViewModel extends ViewModel {
    public static final OpenChatCategory n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SharedPreferences f36269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LineApiClient f36270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableLiveData f36271c;
    public final MutableLiveData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableLiveData f36272e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableLiveData f36273f;
    public final MutableLiveData g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableLiveData f36274h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableLiveData f36275i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableLiveData f36276j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableLiveData f36277k;
    public final MediatorLiveData l;
    public final MediatorLiveData m;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/linecorp/linesdk/openchat/ui/OpenChatInfoViewModel$Companion;", "", "Lcom/linecorp/linesdk/openchat/OpenChatCategory;", "DEFAULT_CATEGORY", "Lcom/linecorp/linesdk/openchat/OpenChatCategory;", "", "KEY_PROFILE_NAME", "Ljava/lang/String;", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        n = OpenChatCategory.NotSelected;
    }

    public OpenChatInfoViewModel(SharedPreferences sharedPreferences, LineApiClient lineApiClient) {
        sharedPreferences.getClass();
        lineApiClient.getClass();
        this.f36269a = sharedPreferences;
        this.f36270b = lineApiClient;
        MutableLiveData mutableLiveData = new MutableLiveData();
        this.f36271c = mutableLiveData;
        MutableLiveData mutableLiveData2 = new MutableLiveData();
        this.d = mutableLiveData2;
        MutableLiveData mutableLiveData3 = new MutableLiveData();
        this.f36272e = mutableLiveData3;
        MutableLiveData mutableLiveData4 = new MutableLiveData();
        this.f36273f = mutableLiveData4;
        MutableLiveData mutableLiveData5 = new MutableLiveData();
        this.g = mutableLiveData5;
        this.f36274h = new MutableLiveData();
        this.f36275i = new MutableLiveData();
        this.f36276j = new MutableLiveData();
        this.f36277k = new MutableLiveData();
        this.l = Transformations.a(mutableLiveData, new tg0(4));
        this.m = Transformations.a(mutableLiveData2, new tg0(5));
        mutableLiveData.setValue("");
        String string = sharedPreferences.getString("key_profile_name", null);
        mutableLiveData2.setValue(string == null ? "" : string);
        mutableLiveData3.setValue("");
        mutableLiveData4.setValue(n);
        mutableLiveData5.setValue(Boolean.TRUE);
        BuildersKt.c(ViewModelKt.a(this), null, null, new OpenChatInfoViewModel$checkAgreementStatus$1(this, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(OpenChatInfoViewModel openChatInfoViewModel, ContinuationImpl continuationImpl) {
        OpenChatInfoViewModel$checkAgreementStatusAsync$1 openChatInfoViewModel$checkAgreementStatusAsync$1;
        if (continuationImpl instanceof OpenChatInfoViewModel$checkAgreementStatusAsync$1) {
            openChatInfoViewModel$checkAgreementStatusAsync$1 = (OpenChatInfoViewModel$checkAgreementStatusAsync$1) continuationImpl;
            int i2 = openChatInfoViewModel$checkAgreementStatusAsync$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                openChatInfoViewModel$checkAgreementStatusAsync$1.d = i2 - Integer.MIN_VALUE;
            } else {
                openChatInfoViewModel$checkAgreementStatusAsync$1 = new OpenChatInfoViewModel$checkAgreementStatusAsync$1(openChatInfoViewModel, continuationImpl);
            }
        } else {
            openChatInfoViewModel$checkAgreementStatusAsync$1 = new OpenChatInfoViewModel$checkAgreementStatusAsync$1(openChatInfoViewModel, continuationImpl);
        }
        Object objF = openChatInfoViewModel$checkAgreementStatusAsync$1.f36280b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = openChatInfoViewModel$checkAgreementStatusAsync$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
            OpenChatInfoViewModel$checkAgreementStatusAsync$2 openChatInfoViewModel$checkAgreementStatusAsync$2 = new OpenChatInfoViewModel$checkAgreementStatusAsync$2(openChatInfoViewModel, null);
            openChatInfoViewModel$checkAgreementStatusAsync$1.d = 1;
            objF = BuildersKt.f(defaultIoScheduler, openChatInfoViewModel$checkAgreementStatusAsync$2, openChatInfoViewModel$checkAgreementStatusAsync$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        objF.getClass();
        return objF;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object zc(OpenChatInfoViewModel openChatInfoViewModel, OpenChatParameters openChatParameters, ContinuationImpl continuationImpl) throws Throwable {
        OpenChatInfoViewModel$createChatRoomAsync$1 openChatInfoViewModel$createChatRoomAsync$1;
        openChatInfoViewModel.getClass();
        if (continuationImpl instanceof OpenChatInfoViewModel$createChatRoomAsync$1) {
            openChatInfoViewModel$createChatRoomAsync$1 = (OpenChatInfoViewModel$createChatRoomAsync$1) continuationImpl;
            int i2 = openChatInfoViewModel$createChatRoomAsync$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                openChatInfoViewModel$createChatRoomAsync$1.d = i2 - Integer.MIN_VALUE;
            } else {
                openChatInfoViewModel$createChatRoomAsync$1 = new OpenChatInfoViewModel$createChatRoomAsync$1(openChatInfoViewModel, continuationImpl);
            }
        } else {
            openChatInfoViewModel$createChatRoomAsync$1 = new OpenChatInfoViewModel$createChatRoomAsync$1(openChatInfoViewModel, continuationImpl);
        }
        Object objF = openChatInfoViewModel$createChatRoomAsync$1.f36283b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = openChatInfoViewModel$createChatRoomAsync$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
            OpenChatInfoViewModel$createChatRoomAsync$2 openChatInfoViewModel$createChatRoomAsync$2 = new OpenChatInfoViewModel$createChatRoomAsync$2(openChatInfoViewModel, openChatParameters, null);
            openChatInfoViewModel$createChatRoomAsync$1.d = 1;
            objF = BuildersKt.f(defaultIoScheduler, openChatInfoViewModel$createChatRoomAsync$2, openChatInfoViewModel$createChatRoomAsync$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        objF.getClass();
        return objF;
    }
}
