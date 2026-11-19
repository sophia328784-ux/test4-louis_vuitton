.class public final synthetic Ls50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:F

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function3;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls50;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Ls50;->c:F

    iput-object p3, p0, Ls50;->d:Ljava/lang/String;

    iput-object p4, p0, Ls50;->e:Ljava/lang/String;

    iput-object p5, p0, Ls50;->f:Ljava/lang/String;

    iput-object p6, p0, Ls50;->g:Ljava/lang/String;

    iput-object p7, p0, Ls50;->h:Landroidx/compose/ui/text/TextStyle;

    iput-boolean p8, p0, Ls50;->i:Z

    iput-object p9, p0, Ls50;->j:Ljava/lang/String;

    iput-object p10, p0, Ls50;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Ls50;->l:Lkotlin/jvm/functions/Function3;

    iput p12, p0, Ls50;->m:I

    iput p13, p0, Ls50;->n:I

    iput p14, p0, Ls50;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Ls50;->m:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget v1, v0, Ls50;->n:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v1, v0, Ls50;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget v1, v0, Ls50;->c:F

    move-object v3, v2

    iget-object v2, v0, Ls50;->d:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Ls50;->e:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Ls50;->f:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Ls50;->g:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Ls50;->h:Landroidx/compose/ui/text/TextStyle;

    move-object v8, v7

    iget-boolean v7, v0, Ls50;->i:Z

    move-object v9, v8

    iget-object v8, v0, Ls50;->j:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Ls50;->k:Lkotlin/jvm/functions/Function0;

    move-object v14, v10

    iget-object v10, v0, Ls50;->l:Lkotlin/jvm/functions/Function3;

    iget v0, v0, Ls50;->o:I

    move-object v15, v14

    move v14, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/designkit/components/components/LVCustomBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
