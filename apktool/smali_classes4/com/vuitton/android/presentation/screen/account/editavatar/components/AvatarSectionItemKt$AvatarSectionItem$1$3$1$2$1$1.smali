.class final Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1;->b:I

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1;->c:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionItemInfo;

    const/4 v1, 0x1

    iget v2, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1;->c:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->e:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
