.class public final synthetic Lu80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:F

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic m:I

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;IIFJJJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu80;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lu80;->c:Ljava/lang/String;

    iput p3, p0, Lu80;->d:I

    iput p4, p0, Lu80;->e:I

    iput p5, p0, Lu80;->f:F

    iput-wide p6, p0, Lu80;->g:J

    iput-wide p8, p0, Lu80;->h:J

    iput-wide p10, p0, Lu80;->i:J

    iput-object p12, p0, Lu80;->j:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lu80;->k:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lu80;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p15, p0, Lu80;->m:I

    move/from16 p1, p16

    iput p1, p0, Lu80;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lu80;->m:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget-object v1, v0, Lu80;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lu80;->c:Ljava/lang/String;

    move-object v3, v2

    iget v2, v0, Lu80;->d:I

    move-object v4, v3

    iget v3, v0, Lu80;->e:I

    move-object v5, v4

    iget v4, v0, Lu80;->f:F

    move-object v7, v5

    iget-wide v5, v0, Lu80;->g:J

    move-object v9, v7

    iget-wide v7, v0, Lu80;->h:J

    move-object v11, v9

    iget-wide v9, v0, Lu80;->i:J

    move-object v12, v11

    iget-object v11, v0, Lu80;->j:Lkotlin/jvm/functions/Function1;

    move-object v13, v12

    iget-object v12, v0, Lu80;->k:Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v13

    iget-object v13, v0, Lu80;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v0, v0, Lu80;->n:I

    move-object/from16 v17, v16

    move/from16 v16, v0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v16}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;IIFJJJLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
