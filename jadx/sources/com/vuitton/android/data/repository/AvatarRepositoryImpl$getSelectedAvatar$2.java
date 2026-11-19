package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.avatar.AvatarItem;
import com.vuitton.foundation.model.domain.model.avatar.AvatarResponse;
import com.vuitton.foundation.model.domain.model.avatar.AvatarSection;
import com.vuitton.foundation.model.domain.model.avatar.SavedUserAvatar;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import defpackage.md;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/avatar/AvatarItem;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AvatarRepositoryImpl$getSelectedAvatar$2", f = "AvatarRepositoryImpl.kt", l = {EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE, EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE, 70, 86}, m = "invokeSuspend", v = 2)
final class AvatarRepositoryImpl$getSelectedAvatar$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends AvatarItem>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AvatarRepositoryImpl f47355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f47356c;
    public AvatarResponse d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47358f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f47359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AvatarRepositoryImpl f47360i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ String f47361j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarRepositoryImpl$getSelectedAvatar$2(AvatarRepositoryImpl avatarRepositoryImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f47360i = avatarRepositoryImpl;
        this.f47361j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AvatarRepositoryImpl$getSelectedAvatar$2(this.f47360i, this.f47361j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AvatarRepositoryImpl$getSelectedAvatar$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:37:0x00de  */
    /* JADX WARN: Code duplicated, block: B:38:0x00df A[Catch: all -> 0x015f, TryCatch #0 {all -> 0x015f, blocks: (B:9:0x0021, B:66:0x0157, B:67:0x0159, B:14:0x0041, B:35:0x00d8, B:39:0x00e1, B:40:0x00e9, B:42:0x00ef, B:46:0x0100, B:48:0x0104, B:49:0x0107, B:50:0x010d, B:52:0x0113, B:53:0x0121, B:55:0x0127, B:59:0x013a, B:62:0x0141, B:38:0x00df, B:17:0x0058, B:31:0x00b6, B:20:0x006e, B:27:0x009a, B:23:0x007f), top: B:80:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00ef A[Catch: all -> 0x015f, TryCatch #0 {all -> 0x015f, blocks: (B:9:0x0021, B:66:0x0157, B:67:0x0159, B:14:0x0041, B:35:0x00d8, B:39:0x00e1, B:40:0x00e9, B:42:0x00ef, B:46:0x0100, B:48:0x0104, B:49:0x0107, B:50:0x010d, B:52:0x0113, B:53:0x0121, B:55:0x0127, B:59:0x013a, B:62:0x0141, B:38:0x00df, B:17:0x0058, B:31:0x00b6, B:20:0x006e, B:27:0x009a, B:23:0x007f), top: B:80:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0104 A[Catch: all -> 0x015f, TryCatch #0 {all -> 0x015f, blocks: (B:9:0x0021, B:66:0x0157, B:67:0x0159, B:14:0x0041, B:35:0x00d8, B:39:0x00e1, B:40:0x00e9, B:42:0x00ef, B:46:0x0100, B:48:0x0104, B:49:0x0107, B:50:0x010d, B:52:0x0113, B:53:0x0121, B:55:0x0127, B:59:0x013a, B:62:0x0141, B:38:0x00df, B:17:0x0058, B:31:0x00b6, B:20:0x006e, B:27:0x009a, B:23:0x007f), top: B:80:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0107 A[Catch: all -> 0x015f, TryCatch #0 {all -> 0x015f, blocks: (B:9:0x0021, B:66:0x0157, B:67:0x0159, B:14:0x0041, B:35:0x00d8, B:39:0x00e1, B:40:0x00e9, B:42:0x00ef, B:46:0x0100, B:48:0x0104, B:49:0x0107, B:50:0x010d, B:52:0x0113, B:53:0x0121, B:55:0x0127, B:59:0x013a, B:62:0x0141, B:38:0x00df, B:17:0x0058, B:31:0x00b6, B:20:0x006e, B:27:0x009a, B:23:0x007f), top: B:80:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0113 A[Catch: all -> 0x015f, TryCatch #0 {all -> 0x015f, blocks: (B:9:0x0021, B:66:0x0157, B:67:0x0159, B:14:0x0041, B:35:0x00d8, B:39:0x00e1, B:40:0x00e9, B:42:0x00ef, B:46:0x0100, B:48:0x0104, B:49:0x0107, B:50:0x010d, B:52:0x0113, B:53:0x0121, B:55:0x0127, B:59:0x013a, B:62:0x0141, B:38:0x00df, B:17:0x0058, B:31:0x00b6, B:20:0x006e, B:27:0x009a, B:23:0x007f), top: B:80:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0127 A[Catch: all -> 0x015f, TryCatch #0 {all -> 0x015f, blocks: (B:9:0x0021, B:66:0x0157, B:67:0x0159, B:14:0x0041, B:35:0x00d8, B:39:0x00e1, B:40:0x00e9, B:42:0x00ef, B:46:0x0100, B:48:0x0104, B:49:0x0107, B:50:0x010d, B:52:0x0113, B:53:0x0121, B:55:0x0127, B:59:0x013a, B:62:0x0141, B:38:0x00df, B:17:0x0058, B:31:0x00b6, B:20:0x006e, B:27:0x009a, B:23:0x007f), top: B:80:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0156  */
    /* JADX WARN: Code duplicated, block: B:74:0x016e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0172  */
    /* JADX WARN: Code duplicated, block: B:79:0x0187  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0141 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x013f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:? A[LOOP:1: B:50:0x010d->B:87:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0139 A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Throwable thA;
        int i2;
        Object objA;
        int i3;
        AvatarRepositoryImpl avatarRepositoryImpl;
        String str;
        int i4;
        Object obj2;
        int i5;
        String str2;
        int i6;
        AvatarRepositoryImpl avatarRepositoryImpl2;
        AvatarResponse avatarResponse;
        Object objD;
        Object obj3;
        int i7;
        int i8;
        AvatarResponse avatarResponse2;
        Iterator it;
        Object next;
        SavedUserAvatar savedUserAvatar;
        Iterator it2;
        AvatarResponse avatarResponse3;
        Iterator it3;
        Object next2;
        AvatarItem avatarItem;
        AvatarItem avatarItem2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i9 = this.f47359h;
        try {
            if (i9 == 0) {
                ResultKt.b(obj);
                AvatarRepositoryImpl avatarRepositoryImpl3 = this.f47360i;
                String str3 = this.f47361j;
                Result.Companion companion = Result.INSTANCE;
                this.f47355b = avatarRepositoryImpl3;
                this.f47356c = str3;
                i2 = 0;
                this.f47357e = 0;
                this.f47358f = 0;
                this.g = 0;
                this.f47359h = 1;
                objA = avatarRepositoryImpl3.a();
                if (objA != coroutineSingletons) {
                    i3 = 0;
                    avatarRepositoryImpl = avatarRepositoryImpl3;
                    str = str3;
                    i4 = 0;
                }
                return coroutineSingletons;
            }
            if (i9 == 1) {
                i2 = this.g;
                int i10 = this.f47358f;
                int i11 = this.f47357e;
                String str4 = (String) this.f47356c;
                AvatarRepositoryImpl avatarRepositoryImpl4 = this.f47355b;
                ResultKt.b(obj);
                avatarRepositoryImpl = avatarRepositoryImpl4;
                str = str4;
                i4 = i11;
                i3 = i10;
                objA = obj;
            } else {
                if (i9 == 2) {
                    i2 = this.g;
                    i5 = this.f47358f;
                    i6 = this.f47357e;
                    str2 = (String) this.f47356c;
                    avatarRepositoryImpl2 = this.f47355b;
                    ResultKt.b(obj);
                    obj2 = ((Result) obj).f71708b;
                    ResultKt.b(obj2);
                    avatarResponse = (AvatarResponse) obj2;
                    this.f47355b = avatarRepositoryImpl2;
                    this.f47356c = str2;
                    this.d = avatarResponse;
                    this.f47357e = i6;
                    this.f47358f = i5;
                    this.g = i2;
                    this.f47359h = 3;
                    objD = avatarRepositoryImpl2.d(this);
                    if (objD == coroutineSingletons) {
                        obj3 = objD;
                        i7 = i5;
                        i8 = i6;
                        avatarResponse2 = avatarResponse;
                        if (Result.a(obj3) != null) {
                            obj3 = EmptyList.f71768b;
                        }
                        it = ((List) obj3).iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!Intrinsics.c(((SavedUserAvatar) next).f66671a, str2));
                        savedUserAvatar = (SavedUserAvatar) next;
                        if (savedUserAvatar != null) {
                            avatarItem2 = avatarResponse2.f66668b;
                        } else {
                            it2 = avatarResponse2.f66667a.iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    it3 = ((AvatarSection) it2.next()).f66670b.iterator();
                                    do {
                                        if (!it3.hasNext()) {
                                            next2 = null;
                                            break;
                                        }
                                        next2 = it3.next();
                                    } while (!Intrinsics.c(((AvatarItem) next2).f66664a, savedUserAvatar.f66672b));
                                    avatarItem = (AvatarItem) next2;
                                    if (avatarItem != null) {
                                        avatarItem2 = avatarItem;
                                        break;
                                    }
                                } else {
                                    this.f47355b = null;
                                    this.f47356c = avatarResponse2;
                                    this.d = null;
                                    this.f47357e = i8;
                                    this.f47358f = i7;
                                    this.g = i2;
                                    this.f47359h = 4;
                                    if (avatarRepositoryImpl2.e(str2, this) != coroutineSingletons) {
                                        avatarResponse3 = avatarResponse2;
                                    }
                                }
                            }
                        }
                        failure = new Result(avatarItem2);
                        thA = Result.a(failure);
                        if (thA != null) {
                            if (!(thA instanceof CancellationException)) {
                                throw thA;
                            }
                            failure = new Result(new Result.Failure(thA));
                        }
                        return new Result(((Result) failure).f71708b);
                    }
                    return coroutineSingletons;
                }
                if (i9 == 3) {
                    i2 = this.g;
                    i7 = this.f47358f;
                    i8 = this.f47357e;
                    avatarResponse2 = this.d;
                    str2 = (String) this.f47356c;
                    avatarRepositoryImpl2 = this.f47355b;
                    ResultKt.b(obj);
                    obj3 = ((Result) obj).f71708b;
                    if (Result.a(obj3) != null) {
                        obj3 = EmptyList.f71768b;
                    }
                    it = ((List) obj3).iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((SavedUserAvatar) next).f66671a, str2));
                    savedUserAvatar = (SavedUserAvatar) next;
                    if (savedUserAvatar != null) {
                        avatarItem2 = avatarResponse2.f66668b;
                    } else {
                        it2 = avatarResponse2.f66667a.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                this.f47355b = null;
                                this.f47356c = avatarResponse2;
                                this.d = null;
                                this.f47357e = i8;
                                this.f47358f = i7;
                                this.g = i2;
                                this.f47359h = 4;
                                if (avatarRepositoryImpl2.e(str2, this) != coroutineSingletons) {
                                    avatarResponse3 = avatarResponse2;
                                }
                                return coroutineSingletons;
                            }
                            it3 = ((AvatarSection) it2.next()).f66670b.iterator();
                            do {
                                if (!it3.hasNext()) {
                                    next2 = null;
                                    break;
                                }
                                next2 = it3.next();
                            } while (!Intrinsics.c(((AvatarItem) next2).f66664a, savedUserAvatar.f66672b));
                            avatarItem = (AvatarItem) next2;
                            if (avatarItem != null) {
                                avatarItem2 = avatarItem;
                                break;
                            }
                        }
                    }
                    failure = new Result(avatarItem2);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return new Result(((Result) failure).f71708b);
                }
                if (i9 != 4) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                avatarResponse3 = (AvatarResponse) this.f47356c;
                ResultKt.b(obj);
                ((Result) obj).getClass();
            }
            avatarItem2 = avatarResponse3.f66668b;
            failure = new Result(avatarItem2);
            thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof CancellationException)) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return new Result(((Result) failure).f71708b);
            this.f47355b = avatarRepositoryImpl;
            this.f47356c = str;
            this.f47357e = i4;
            this.f47358f = i3;
            this.g = i2;
            this.f47359h = 2;
            Object objC = ((ResultStrategy) objA).c(this);
            if (objC != coroutineSingletons) {
                String str5 = str;
                obj2 = objC;
                i5 = i3;
                str2 = str5;
                i6 = i4;
                avatarRepositoryImpl2 = avatarRepositoryImpl;
                ResultKt.b(obj2);
                avatarResponse = (AvatarResponse) obj2;
                this.f47355b = avatarRepositoryImpl2;
                this.f47356c = str2;
                this.d = avatarResponse;
                this.f47357e = i6;
                this.f47358f = i5;
                this.g = i2;
                this.f47359h = 3;
                objD = avatarRepositoryImpl2.d(this);
                if (objD == coroutineSingletons) {
                    obj3 = objD;
                    i7 = i5;
                    i8 = i6;
                    avatarResponse2 = avatarResponse;
                    if (Result.a(obj3) != null) {
                        obj3 = EmptyList.f71768b;
                    }
                    it = ((List) obj3).iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((SavedUserAvatar) next).f66671a, str2));
                    savedUserAvatar = (SavedUserAvatar) next;
                    if (savedUserAvatar != null) {
                        it2 = avatarResponse2.f66667a.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                this.f47355b = null;
                                this.f47356c = avatarResponse2;
                                this.d = null;
                                this.f47357e = i8;
                                this.f47358f = i7;
                                this.g = i2;
                                this.f47359h = 4;
                                if (avatarRepositoryImpl2.e(str2, this) != coroutineSingletons) {
                                    avatarResponse3 = avatarResponse2;
                                    avatarItem2 = avatarResponse3.f66668b;
                                    break;
                                }
                            } else {
                                it3 = ((AvatarSection) it2.next()).f66670b.iterator();
                                do {
                                    if (!it3.hasNext()) {
                                        next2 = null;
                                        break;
                                    }
                                    next2 = it3.next();
                                } while (!Intrinsics.c(((AvatarItem) next2).f66664a, savedUserAvatar.f66672b));
                                avatarItem = (AvatarItem) next2;
                                if (avatarItem != null) {
                                    avatarItem2 = avatarItem;
                                    break;
                                }
                            }
                        }
                    } else {
                        avatarItem2 = avatarResponse2.f66668b;
                    }
                    failure = new Result(avatarItem2);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (!(thA instanceof CancellationException)) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return new Result(((Result) failure).f71708b);
                }
            }
            return coroutineSingletons;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
