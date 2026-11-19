.class final Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt$SeeMyInfoComposable$3$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt$SeeMyInfoComposable$3$1$2;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$ShowAccountDeletedConfirmation;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/components/SeeMyInfoComposableKt$SeeMyInfoComposable$3$1$2;->b:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen$DeletedAccountConfirmation;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen$DeletedAccountConfirmation;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$AccountDeleteError;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
