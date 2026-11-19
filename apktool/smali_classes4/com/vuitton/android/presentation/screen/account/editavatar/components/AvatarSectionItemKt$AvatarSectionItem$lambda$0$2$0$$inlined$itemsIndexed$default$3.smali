.class public final Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
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
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v5, p3

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 p4, p3, 0x6

    if-nez p4, :cond_1

    invoke-interface {v5, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, p3

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    and-int/lit8 p3, p3, 0x30

    const/16 p4, 0x20

    if-nez p3, :cond_3

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_2

    move p3, p4

    goto :goto_2

    :cond_2
    const/16 p3, 0x10

    :goto_2
    or-int/2addr p1, p3

    :cond_3
    and-int/lit16 p3, p1, 0x93

    const/16 v0, 0x92

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_4

    move p3, v2

    goto :goto_3

    :cond_4
    move p3, v1

    :goto_3
    and-int/lit8 v0, p1, 0x1

    invoke-interface {v5, v0, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p3

    if-eqz p3, :cond_b

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    const v0, 0x5c027928

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const-string v3, "avatarLibrary_avatar_button"

    invoke-static {v0, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v3, p1, 0x70

    xor-int/lit8 v3, v3, 0x30

    if-le v3, p4, :cond_5

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    and-int/lit8 p1, p1, 0x30

    if-ne p1, p4, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :cond_7
    :goto_4
    invoke-interface {v5, p3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v2

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;->c:Ljava/lang/String;

    invoke-interface {v5, p4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p1, v2

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez p1, :cond_8

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, p1, :cond_9

    :cond_8
    new-instance v2, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1;

    invoke-direct {v2, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$1$3$1$2$1$1;-><init>(ILcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;->d:Ljava/lang/String;

    if-nez p1, :cond_a

    const-string p1, ""

    :cond_a
    move-object v2, p1

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/components/AvatarSectionItemKt$AvatarSectionItem$lambda$0$2$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function1;

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/compose/components/LVAvatarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/AvatarSize;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_b
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
