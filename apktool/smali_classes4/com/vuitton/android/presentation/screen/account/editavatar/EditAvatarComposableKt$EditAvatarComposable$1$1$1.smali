.class final Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$1$1$1;
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
.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$1$1$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$1$1$1;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent$AvatarSaveEvent;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent$AvatarSaveEvent;

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent$AvatarSaveEvent;->a:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarEvent$AvatarSaveEvent;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$1$1$1;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt$EditAvatarComposable$1$1$1;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
