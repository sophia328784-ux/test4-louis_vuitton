.class public final Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$3;
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

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$3;->c:Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    move-object v4, p3

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    and-int/lit8 p4, p3, 0x6

    const/4 v0, 0x2

    if-nez p4, :cond_1

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    or-int/2addr p1, p3

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    and-int/lit8 p3, p3, 0x30

    if-nez p3, :cond_3

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x20

    goto :goto_2

    :cond_2
    const/16 p3, 0x10

    :goto_2
    or-int/2addr p1, p3

    :cond_3
    and-int/lit16 p3, p1, 0x93

    const/16 p4, 0x92

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, p4, :cond_4

    move p3, v2

    goto :goto_3

    :cond_4
    move p3, v1

    :goto_3
    and-int/2addr p1, v2

    invoke-interface {v4, p1, p3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;

    const p3, -0x66613a09

    invoke-interface {v4, p3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p3

    iget p3, p3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 p4, 0x0

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v3, p3, p4, v0}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p3

    iget v7, p3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$3;->c:Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;

    iget-object p3, p3, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p2, p3, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
