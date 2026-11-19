package com.vuitton.android.presentation.screen.account.editavatar;

import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.avatar.GetAllAvatarsUseCase;
import com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase;
import com.vuitton.android.presentation.screen.account.editavatar.mappers.AvatarUiModelMapperKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarLibraryUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel;
import com.vuitton.android.presentation.screen.account.editavatar.models.EditAvatarViewState;
import com.vuitton.foundation.model.domain.model.avatar.AvatarItem;
import com.vuitton.foundation.model.domain.model.avatar.AvatarResponse;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl$loadAvatars$1", f = "EditAvatarViewModelImpl.kt", l = {EACTags.CARD_SEQUENCE_NUMBER, EACTags.SEX, EACTags.SEX, 55, 55}, m = "invokeSuspend", v = 2)
final class EditAvatarViewModelImpl$loadAvatars$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f52305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AvatarItem f52306c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f52307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f52308f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ EditAvatarViewModelImpl f52309h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditAvatarViewModelImpl$loadAvatars$1(EditAvatarViewModelImpl editAvatarViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52309h = editAvatarViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditAvatarViewModelImpl$loadAvatars$1(this.f52309h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditAvatarViewModelImpl$loadAvatars$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00da  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e6 A[Catch: all -> 0x002c, TryCatch #0 {all -> 0x002c, blocks: (B:10:0x0021, B:55:0x011f, B:58:0x0126, B:60:0x012a, B:62:0x012e, B:17:0x003f, B:51:0x0108, B:20:0x0054, B:43:0x00df, B:45:0x00e6, B:47:0x00ea, B:23:0x006b, B:39:0x00c5, B:26:0x007e, B:33:0x00a5, B:36:0x00ac, B:29:0x008b), top: B:96:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:49:0x0102  */
    /* JADX WARN: Code duplicated, block: B:50:0x0103  */
    /* JADX WARN: Code duplicated, block: B:54:0x011d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0125  */
    /* JADX WARN: Code duplicated, block: B:60:0x012a A[Catch: all -> 0x002c, TryCatch #0 {all -> 0x002c, blocks: (B:10:0x0021, B:55:0x011f, B:58:0x0126, B:60:0x012a, B:62:0x012e, B:17:0x003f, B:51:0x0108, B:20:0x0054, B:43:0x00df, B:45:0x00e6, B:47:0x00ea, B:23:0x006b, B:39:0x00c5, B:26:0x007e, B:33:0x00a5, B:36:0x00ac, B:29:0x008b), top: B:96:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x012d  */
    /* JADX WARN: Code duplicated, block: B:68:0x0148  */
    /* JADX WARN: Code duplicated, block: B:70:0x014c  */
    /* JADX WARN: Code duplicated, block: B:73:0x015f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0194 A[LOOP:0: B:74:0x018e->B:76:0x0194, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:80:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:86:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:88:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:95:0x01e2  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Throwable thA;
        Object obj2;
        Throwable thA2;
        ArrayList arrayList;
        Iterator it;
        Iterator it2;
        Object next;
        String str;
        Object objA;
        EditAvatarViewModelImpl editAvatarViewModelImpl;
        int i2;
        int i3;
        int i4;
        AvatarItem avatarItem;
        Object objA2;
        Object objC;
        int i5;
        EditAvatarViewModelImpl editAvatarViewModelImpl2;
        Object obj3;
        int i6;
        AvatarItem avatarItem2;
        String str2;
        AvatarLibraryUiModel avatarLibraryUiModelA;
        Object objA3;
        int i7;
        AvatarLibraryUiModel avatarLibraryUiModel;
        Object objC2;
        Object obj4;
        AvatarLibraryUiModel avatarLibraryUiModel2;
        Profile profile;
        String str3;
        EditAvatarViewModelImpl editAvatarViewModelImpl3 = this.f52309h;
        MutableStateFlow mutableStateFlow = editAvatarViewModelImpl3.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i8 = this.g;
        try {
            if (i8 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                GetUserAvatarUseCase getUserAvatarUseCase = editAvatarViewModelImpl3.f52299c;
                this.f52305b = editAvatarViewModelImpl3;
                this.d = 0;
                this.f52307e = 0;
                this.f52308f = 0;
                this.g = 1;
                objA = getUserAvatarUseCase.a(this);
                if (objA != coroutineSingletons) {
                    editAvatarViewModelImpl = editAvatarViewModelImpl3;
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                }
                return coroutineSingletons;
            }
            if (i8 == 1) {
                i2 = this.f52308f;
                i3 = this.f52307e;
                i4 = this.d;
                editAvatarViewModelImpl = (EditAvatarViewModelImpl) this.f52305b;
                ResultKt.b(obj);
                objA = ((Result) obj).f71708b;
            } else {
                if (i8 == 2) {
                    i2 = this.f52308f;
                    int i9 = this.f52307e;
                    int i10 = this.d;
                    AvatarItem avatarItem3 = this.f52306c;
                    editAvatarViewModelImpl = (EditAvatarViewModelImpl) this.f52305b;
                    ResultKt.b(obj);
                    avatarItem = avatarItem3;
                    i4 = i10;
                    i3 = i9;
                    objA2 = obj;
                    this.f52305b = editAvatarViewModelImpl;
                    this.f52306c = avatarItem;
                    this.d = i4;
                    this.f52307e = i3;
                    this.f52308f = i2;
                    this.g = 3;
                    objC = ((ResultStrategy) objA2).c(this);
                    if (objC == coroutineSingletons) {
                        i5 = i4;
                        editAvatarViewModelImpl2 = editAvatarViewModelImpl;
                        obj3 = objC;
                        i6 = i3;
                        avatarItem2 = avatarItem;
                        ResultKt.b(obj3);
                        AvatarResponse avatarResponse = (AvatarResponse) obj3;
                        if (avatarItem2 != null) {
                            str2 = avatarItem2.f66664a;
                        } else {
                            str2 = null;
                        }
                        avatarLibraryUiModelA = AvatarUiModelMapperKt.a(avatarResponse, str2);
                        GetProfileUseCase getProfileUseCase = editAvatarViewModelImpl2.f52300e;
                        this.f52305b = avatarLibraryUiModelA;
                        this.f52306c = null;
                        this.d = i5;
                        this.f52307e = i6;
                        this.f52308f = i2;
                        this.g = 4;
                        objA3 = getProfileUseCase.a(this);
                        if (objA3 != coroutineSingletons) {
                            i7 = i5;
                            avatarLibraryUiModel = avatarLibraryUiModelA;
                            this.f52305b = avatarLibraryUiModel;
                            this.f52306c = null;
                            this.d = i7;
                            this.f52307e = i6;
                            this.f52308f = i2;
                            this.g = 5;
                            objC2 = ((ResultStrategy) objA3).c(this);
                            if (objC2 != coroutineSingletons) {
                                obj4 = objC2;
                                avatarLibraryUiModel2 = avatarLibraryUiModel;
                            }
                        }
                    }
                    return coroutineSingletons;
                }
                if (i8 == 3) {
                    i2 = this.f52308f;
                    i6 = this.f52307e;
                    i5 = this.d;
                    avatarItem2 = this.f52306c;
                    editAvatarViewModelImpl2 = (EditAvatarViewModelImpl) this.f52305b;
                    ResultKt.b(obj);
                    obj3 = ((Result) obj).f71708b;
                    ResultKt.b(obj3);
                    AvatarResponse avatarResponse2 = (AvatarResponse) obj3;
                    if (avatarItem2 != null) {
                        str2 = avatarItem2.f66664a;
                    } else {
                        str2 = null;
                    }
                    avatarLibraryUiModelA = AvatarUiModelMapperKt.a(avatarResponse2, str2);
                    GetProfileUseCase getProfileUseCase2 = editAvatarViewModelImpl2.f52300e;
                    this.f52305b = avatarLibraryUiModelA;
                    this.f52306c = null;
                    this.d = i5;
                    this.f52307e = i6;
                    this.f52308f = i2;
                    this.g = 4;
                    objA3 = getProfileUseCase2.a(this);
                    if (objA3 != coroutineSingletons) {
                        i7 = i5;
                        avatarLibraryUiModel = avatarLibraryUiModelA;
                        this.f52305b = avatarLibraryUiModel;
                        this.f52306c = null;
                        this.d = i7;
                        this.f52307e = i6;
                        this.f52308f = i2;
                        this.g = 5;
                        objC2 = ((ResultStrategy) objA3).c(this);
                        if (objC2 != coroutineSingletons) {
                            obj4 = objC2;
                            avatarLibraryUiModel2 = avatarLibraryUiModel;
                        }
                    }
                    return coroutineSingletons;
                }
                if (i8 == 4) {
                    i2 = this.f52308f;
                    int i11 = this.f52307e;
                    int i12 = this.d;
                    avatarLibraryUiModel = (AvatarLibraryUiModel) this.f52305b;
                    ResultKt.b(obj);
                    i7 = i12;
                    i6 = i11;
                    objA3 = obj;
                    this.f52305b = avatarLibraryUiModel;
                    this.f52306c = null;
                    this.d = i7;
                    this.f52307e = i6;
                    this.f52308f = i2;
                    this.g = 5;
                    objC2 = ((ResultStrategy) objA3).c(this);
                    if (objC2 != coroutineSingletons) {
                        obj4 = objC2;
                        avatarLibraryUiModel2 = avatarLibraryUiModel;
                    }
                    return coroutineSingletons;
                }
                if (i8 != 5) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                avatarLibraryUiModel2 = (AvatarLibraryUiModel) this.f52305b;
                ResultKt.b(obj);
                obj4 = ((Result) obj).f71708b;
            }
            Result.Companion companion2 = Result.INSTANCE;
            if (obj4 instanceof Result.Failure) {
                obj4 = null;
            }
            profile = (Profile) obj4;
            if (profile != null) {
                str3 = profile.r;
            } else {
                str3 = null;
            }
            failure = new Result(new Pair(avatarLibraryUiModel2, str3));
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            obj2 = ((Result) failure).f71708b;
            if (!(obj2 instanceof Result.Failure)) {
                Pair pair = (Pair) obj2;
                AvatarLibraryUiModel avatarLibraryUiModel3 = (AvatarLibraryUiModel) pair.f71705b;
                mutableStateFlow.setValue(new EditAvatarViewState.Success(avatarLibraryUiModel3.f52330a, avatarLibraryUiModel3.f52331b, (String) pair.f71706c, false));
                Object value = editAvatarViewModelImpl3.f52302h.getValue();
                value.getClass();
                List list = ((EditAvatarViewState.Success) value).f52336a;
                arrayList = new ArrayList();
                it = list.iterator();
                while (it.hasNext()) {
                    CollectionsKt.j(arrayList, ((AvatarSectionUiModel) it.next()).f52333b);
                }
                it2 = arrayList.iterator();
                do {
                    if (it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!((AvatarItemUiModel) next).f52329e);
                AvatarItemUiModel avatarItemUiModel = (AvatarItemUiModel) next;
                str = avatarItemUiModel != null ? avatarItemUiModel.f52326a : null;
                if (str == null) {
                    str = "";
                }
                editAvatarViewModelImpl3.d6(new AvatarTrackingUiModel.EditAvatarScreen(str));
            }
            thA2 = Result.a(obj2);
            if (thA2 != null) {
                editAvatarViewModelImpl3.f52297a.c("EditAvatarViewModelImpl", "Failed to load avatars", thA2);
                mutableStateFlow.setValue(EditAvatarViewState.Error.f52334a);
            }
            return Unit.f71739a;
            Result.Companion companion3 = Result.INSTANCE;
            if (objA instanceof Result.Failure) {
                objA = null;
            }
            avatarItem = (AvatarItem) objA;
            GetAllAvatarsUseCase getAllAvatarsUseCase = editAvatarViewModelImpl.f52298b;
            this.f52305b = editAvatarViewModelImpl;
            this.f52306c = avatarItem;
            this.d = i4;
            this.f52307e = i3;
            this.f52308f = i2;
            this.g = 2;
            objA2 = getAllAvatarsUseCase.f49444a.a();
            if (objA2 != coroutineSingletons) {
                this.f52305b = editAvatarViewModelImpl;
                this.f52306c = avatarItem;
                this.d = i4;
                this.f52307e = i3;
                this.f52308f = i2;
                this.g = 3;
                objC = ((ResultStrategy) objA2).c(this);
                if (objC == coroutineSingletons) {
                    i5 = i4;
                    editAvatarViewModelImpl2 = editAvatarViewModelImpl;
                    obj3 = objC;
                    i6 = i3;
                    avatarItem2 = avatarItem;
                    ResultKt.b(obj3);
                    AvatarResponse avatarResponse3 = (AvatarResponse) obj3;
                    if (avatarItem2 != null) {
                        str2 = avatarItem2.f66664a;
                    } else {
                        str2 = null;
                    }
                    avatarLibraryUiModelA = AvatarUiModelMapperKt.a(avatarResponse3, str2);
                    GetProfileUseCase getProfileUseCase3 = editAvatarViewModelImpl2.f52300e;
                    this.f52305b = avatarLibraryUiModelA;
                    this.f52306c = null;
                    this.d = i5;
                    this.f52307e = i6;
                    this.f52308f = i2;
                    this.g = 4;
                    objA3 = getProfileUseCase3.a(this);
                    if (objA3 != coroutineSingletons) {
                        i7 = i5;
                        avatarLibraryUiModel = avatarLibraryUiModelA;
                        this.f52305b = avatarLibraryUiModel;
                        this.f52306c = null;
                        this.d = i7;
                        this.f52307e = i6;
                        this.f52308f = i2;
                        this.g = 5;
                        objC2 = ((ResultStrategy) objA3).c(this);
                        if (objC2 != coroutineSingletons) {
                            obj4 = objC2;
                            avatarLibraryUiModel2 = avatarLibraryUiModel;
                            Result.Companion companion4 = Result.INSTANCE;
                            if (obj4 instanceof Result.Failure) {
                                obj4 = null;
                            }
                            profile = (Profile) obj4;
                            if (profile != null) {
                                str3 = profile.r;
                            } else {
                                str3 = null;
                            }
                            failure = new Result(new Pair(avatarLibraryUiModel2, str3));
                            thA = Result.a(failure);
                            if (thA != null) {
                                if (!(thA instanceof CancellationException)) {
                                    throw thA;
                                }
                                failure = new Result(new Result.Failure(thA));
                            }
                            obj2 = ((Result) failure).f71708b;
                            if (!(obj2 instanceof Result.Failure)) {
                                Pair pair2 = (Pair) obj2;
                                AvatarLibraryUiModel avatarLibraryUiModel4 = (AvatarLibraryUiModel) pair2.f71705b;
                                mutableStateFlow.setValue(new EditAvatarViewState.Success(avatarLibraryUiModel4.f52330a, avatarLibraryUiModel4.f52331b, (String) pair2.f71706c, false));
                                Object value2 = editAvatarViewModelImpl3.f52302h.getValue();
                                value2.getClass();
                                List list2 = ((EditAvatarViewState.Success) value2).f52336a;
                                arrayList = new ArrayList();
                                it = list2.iterator();
                                while (it.hasNext()) {
                                    CollectionsKt.j(arrayList, ((AvatarSectionUiModel) it.next()).f52333b);
                                }
                                it2 = arrayList.iterator();
                                do {
                                    if (it2.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it2.next();
                                } while (!((AvatarItemUiModel) next).f52329e);
                                AvatarItemUiModel avatarItemUiModel2 = (AvatarItemUiModel) next;
                                if (avatarItemUiModel2 != null) {
                                }
                                if (str == null) {
                                    str = "";
                                }
                                editAvatarViewModelImpl3.d6(new AvatarTrackingUiModel.EditAvatarScreen(str));
                            }
                            thA2 = Result.a(obj2);
                            if (thA2 != null) {
                                editAvatarViewModelImpl3.f52297a.c("EditAvatarViewModelImpl", "Failed to load avatars", thA2);
                                mutableStateFlow.setValue(EditAvatarViewState.Error.f52334a);
                            }
                            return Unit.f71739a;
                        }
                    }
                }
            }
            return coroutineSingletons;
        } catch (Throwable th) {
            Result.Companion companion5 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
