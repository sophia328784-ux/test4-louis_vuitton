.class public final synthetic Lh50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Integer;

.field public final synthetic f:Ljava/lang/Integer;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

.field public final synthetic j:Z

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZZZLkotlin/jvm/functions/Function0;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh50;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh50;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lh50;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iput-object p3, p0, Lh50;->d:Ljava/lang/String;

    iput-object p4, p0, Lh50;->e:Ljava/lang/Integer;

    iput-object p5, p0, Lh50;->f:Ljava/lang/Integer;

    iput-boolean p6, p0, Lh50;->g:Z

    iput-boolean p7, p0, Lh50;->h:Z

    iput-boolean p8, p0, Lh50;->j:Z

    iput-object p9, p0, Lh50;->k:Lkotlin/jvm/functions/Function0;

    iput p10, p0, Lh50;->l:I

    iput p11, p0, Lh50;->m:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;ZLkotlin/jvm/functions/Function0;II)V
    .locals 1

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lh50;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh50;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lh50;->d:Ljava/lang/String;

    iput-object p3, p0, Lh50;->e:Ljava/lang/Integer;

    iput-object p4, p0, Lh50;->f:Ljava/lang/Integer;

    iput-boolean p5, p0, Lh50;->g:Z

    iput-boolean p6, p0, Lh50;->h:Z

    iput-object p7, p0, Lh50;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iput-boolean p8, p0, Lh50;->j:Z

    iput-object p9, p0, Lh50;->k:Lkotlin/jvm/functions/Function0;

    iput p10, p0, Lh50;->l:I

    iput p11, p0, Lh50;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lh50;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lh50;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    iget p1, p0, Lh50;->m:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    iget-object v4, p0, Lh50;->c:Landroidx/compose/ui/Modifier;

    iget-object v5, p0, Lh50;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-object v6, p0, Lh50;->e:Ljava/lang/Integer;

    iget-object v7, p0, Lh50;->f:Ljava/lang/Integer;

    iget-object v8, p0, Lh50;->d:Ljava/lang/String;

    iget-object v9, p0, Lh50;->k:Lkotlin/jvm/functions/Function0;

    iget-boolean v10, p0, Lh50;->g:Z

    iget-boolean v11, p0, Lh50;->h:Z

    iget-boolean v12, p0, Lh50;->j:Z

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lh50;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v0

    iget v1, p0, Lh50;->m:I

    iget-object v3, p0, Lh50;->c:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lh50;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-object v5, p0, Lh50;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lh50;->f:Ljava/lang/Integer;

    iget-object v7, p0, Lh50;->d:Ljava/lang/String;

    iget-object v8, p0, Lh50;->k:Lkotlin/jvm/functions/Function0;

    iget-boolean v9, p0, Lh50;->g:Z

    iget-boolean v10, p0, Lh50;->h:Z

    iget-boolean v11, p0, Lh50;->j:Z

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
