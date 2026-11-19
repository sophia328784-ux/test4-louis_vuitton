.class public final synthetic Lzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lzu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzu;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lzu;->e:I

    iput-object p3, p0, Lzu;->i:Ljava/lang/Object;

    iput-boolean p4, p0, Lzu;->f:Z

    iput-object p5, p0, Lzu;->j:Ljava/lang/Object;

    iput-object p6, p0, Lzu;->k:Ljava/lang/Object;

    iput-object p7, p0, Lzu;->d:Ljava/lang/String;

    iput p8, p0, Lzu;->g:I

    iput p9, p0, Lzu;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V
    .locals 1

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lzu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzu;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lzu;->e:I

    iput-object p3, p0, Lzu;->d:Ljava/lang/String;

    iput-object p4, p0, Lzu;->i:Ljava/lang/Object;

    iput-boolean p5, p0, Lzu;->f:Z

    iput-object p6, p0, Lzu;->k:Ljava/lang/Object;

    iput-object p7, p0, Lzu;->j:Ljava/lang/Object;

    iput p8, p0, Lzu;->g:I

    iput p9, p0, Lzu;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;ZII)V
    .locals 1

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lzu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzu;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lzu;->d:Ljava/lang/String;

    iput-object p3, p0, Lzu;->i:Ljava/lang/Object;

    iput-object p4, p0, Lzu;->j:Ljava/lang/Object;

    iput p5, p0, Lzu;->e:I

    iput-object p6, p0, Lzu;->k:Ljava/lang/Object;

    iput-boolean p7, p0, Lzu;->f:Z

    iput p8, p0, Lzu;->g:I

    iput p9, p0, Lzu;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lzu;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lzu;->i:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    iget-object v0, p0, Lzu;->k:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lzu;->j:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lzu;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lzu;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lzu;->e:I

    iget-object v3, p0, Lzu;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lzu;->f:Z

    iget v10, p0, Lzu;->h:I

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickFilterButtonKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lzu;->i:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lzu;->j:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lzu;->k:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lzu;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lzu;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lzu;->d:Ljava/lang/String;

    iget v5, p0, Lzu;->e:I

    iget-boolean v7, p0, Lzu;->f:Z

    iget v10, p0, Lzu;->h:I

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/compose/components/LVCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$CardType;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lzu;->i:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;

    iget-object v0, p0, Lzu;->j:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lzu;->k:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lzu;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lzu;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lzu;->e:I

    iget-boolean v4, p0, Lzu;->f:Z

    iget-object v7, p0, Lzu;->d:Ljava/lang/String;

    iget v10, p0, Lzu;->h:I

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairPhotoItemKt;->a(Landroidx/compose/ui/Modifier;ILcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairPhoto;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
