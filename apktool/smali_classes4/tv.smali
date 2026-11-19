.class public final synthetic Ltv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ltv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv;->g:Ljava/lang/Object;

    iput-object p2, p0, Ltv;->h:Ljava/lang/Object;

    iput-boolean p3, p0, Ltv;->c:Z

    iput-boolean p4, p0, Ltv;->d:Z

    iput-object p5, p0, Ltv;->i:Ljava/lang/Object;

    iput-object p6, p0, Ltv;->j:Lkotlin/Function;

    iput-boolean p7, p0, Ltv;->e:Z

    iput p8, p0, Ltv;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Integer;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ZZI)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Ltv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv;->g:Ljava/lang/Object;

    iput-object p2, p0, Ltv;->h:Ljava/lang/Object;

    iput-object p3, p0, Ltv;->i:Ljava/lang/Object;

    iput-boolean p4, p0, Ltv;->c:Z

    iput-object p5, p0, Ltv;->j:Lkotlin/Function;

    iput-boolean p6, p0, Ltv;->d:Z

    iput-boolean p7, p0, Ltv;->e:Z

    iput p8, p0, Ltv;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Ltv;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ltv;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Ltv;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    iget-object v0, p0, Ltv;->i:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Ltv;->j:Lkotlin/Function;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ltv;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-boolean v4, p0, Ltv;->c:Z

    iget-boolean v6, p0, Ltv;->d:Z

    iget-boolean v7, p0, Ltv;->e:Z

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/SearchResultCountBarStoreModeKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/Integer;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ZZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ltv;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v0, p0, Ltv;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    iget-object v0, p0, Ltv;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Ltv;->j:Lkotlin/Function;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ltv;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-boolean v3, p0, Ltv;->c:Z

    iget-boolean v4, p0, Ltv;->d:Z

    iget-boolean v7, p0, Ltv;->e:Z

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoScreenKt;->a(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
