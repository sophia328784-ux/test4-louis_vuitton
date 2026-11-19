.class public final synthetic Lmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;IZLkotlin/jvm/functions/Function0;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lmm;->d:I

    iput-object p3, p0, Lmm;->i:Ljava/lang/Object;

    iput-object p4, p0, Lmm;->j:Ljava/lang/Object;

    iput-object p5, p0, Lmm;->k:Ljava/lang/Object;

    iput p6, p0, Lmm;->e:I

    iput-boolean p7, p0, Lmm;->f:Z

    iput-object p8, p0, Lmm;->l:Lkotlin/Function;

    iput p9, p0, Lmm;->g:I

    iput p10, p0, Lmm;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V
    .locals 1

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lmm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm;->i:Ljava/lang/Object;

    iput-object p2, p0, Lmm;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lmm;->j:Ljava/lang/Object;

    iput-boolean p4, p0, Lmm;->f:Z

    iput p5, p0, Lmm;->d:I

    iput p6, p0, Lmm;->e:I

    iput-object p7, p0, Lmm;->k:Ljava/lang/Object;

    iput-object p8, p0, Lmm;->l:Lkotlin/Function;

    iput p9, p0, Lmm;->g:I

    iput p10, p0, Lmm;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lmm;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lmm;->i:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/unit/Dp;

    iget-object v0, p0, Lmm;->j:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lmm;->k:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    iget-object v0, p0, Lmm;->l:Lkotlin/Function;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lmm;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget p1, p0, Lmm;->h:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v1, p0, Lmm;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lmm;->d:I

    iget v6, p0, Lmm;->e:I

    iget-boolean v7, p0, Lmm;->f:Z

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->a(Landroidx/compose/ui/Modifier;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;IZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lmm;->i:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, p0, Lmm;->j:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/text/TextStyle;

    iget-object v0, p0, Lmm;->k:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lmm;->l:Lkotlin/Function;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lmm;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v2, p0, Lmm;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lmm;->f:Z

    iget v5, p0, Lmm;->d:I

    iget v6, p0, Lmm;->e:I

    iget v11, p0, Lmm;->h:I

    invoke-static/range {v1 .. v11}, Landroidx/compose/foundation/text/ClickableTextKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
