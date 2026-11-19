.class public final synthetic Lg31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:I

.field public final synthetic i:Z

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic m:I

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJJIZIILandroidx/compose/ui/text/TextStyle;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg31;->b:Ljava/lang/String;

    iput-object p2, p0, Lg31;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lg31;->d:J

    iput-wide p5, p0, Lg31;->e:J

    iput-wide p7, p0, Lg31;->f:J

    iput-wide p9, p0, Lg31;->g:J

    iput p11, p0, Lg31;->h:I

    iput-boolean p12, p0, Lg31;->i:Z

    iput p13, p0, Lg31;->j:I

    iput p14, p0, Lg31;->k:I

    iput-object p15, p0, Lg31;->l:Landroidx/compose/ui/text/TextStyle;

    move/from16 p1, p16

    iput p1, p0, Lg31;->m:I

    move/from16 p1, p17

    iput p1, p0, Lg31;->n:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lg31;->m:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-object v1, v0, Lg31;->b:Ljava/lang/String;

    move-object v2, v1

    iget-object v1, v0, Lg31;->c:Landroidx/compose/ui/Modifier;

    move-object v4, v2

    iget-wide v2, v0, Lg31;->d:J

    move-object v6, v4

    iget-wide v4, v0, Lg31;->e:J

    move-object v8, v6

    iget-wide v6, v0, Lg31;->f:J

    move-object v10, v8

    iget-wide v8, v0, Lg31;->g:J

    move-object v11, v10

    iget v10, v0, Lg31;->h:I

    move-object v12, v11

    iget-boolean v11, v0, Lg31;->i:Z

    move-object v13, v12

    iget v12, v0, Lg31;->j:I

    move-object v14, v13

    iget v13, v0, Lg31;->k:I

    move-object/from16 v17, v14

    iget-object v14, v0, Lg31;->l:Landroidx/compose/ui/text/TextStyle;

    iget v0, v0, Lg31;->n:I

    move-object/from16 v18, v17

    move/from16 v17, v0

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v17}, Landroidx/compose/material3/TextKt;->b(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJJIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
