.class public final Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4;
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

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    if-nez v4, :cond_1

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    if-nez v3, :cond_3

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v1, 0x93

    const/16 v4, 0x92

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-eq v3, v4, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    move v3, v9

    :goto_3
    and-int/2addr v1, v5

    invoke-interface {v7, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;

    const v1, -0x43865044

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v14, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v15, 0x7

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_5

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v2, :cond_6

    :cond_5
    new-instance v4, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$1$1$3$1$1;

    invoke-direct {v4, v1, v5}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$1$1$3$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt$AddressBookContent$lambda$0$0$$inlined$items$default$4;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v0, v7, v9}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookContentKt;->d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_7
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
