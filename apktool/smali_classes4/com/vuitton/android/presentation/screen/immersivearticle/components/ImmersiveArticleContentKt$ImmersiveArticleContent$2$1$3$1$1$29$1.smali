.class final Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventSectionUiModel;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventSectionUiModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1;->b:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventSectionUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventSectionUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleEventSectionUiModel;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1;->b:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->d:Z

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->c:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt$ImmersiveArticleContent$2$1$3$1$1$29$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
