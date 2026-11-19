.class public final synthetic Lau0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;

.field public final synthetic g:I

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic k:Lkotlin/jvm/functions/Function3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lau0;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lau0;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lau0;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lau0;->f:Lkotlin/jvm/functions/Function2;

    iput p6, p0, Lau0;->g:I

    iput-wide p7, p0, Lau0;->h:J

    iput-wide p9, p0, Lau0;->i:J

    iput-object p11, p0, Lau0;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p12, p0, Lau0;->k:Lkotlin/jvm/functions/Function3;

    iput p13, p0, Lau0;->l:I

    iput p14, p0, Lau0;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lau0;->l:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v1, v0, Lau0;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lau0;->c:Lkotlin/jvm/functions/Function2;

    move-object v3, v2

    iget-object v2, v0, Lau0;->d:Lkotlin/jvm/functions/Function2;

    move-object v4, v3

    iget-object v3, v0, Lau0;->e:Lkotlin/jvm/functions/Function2;

    move-object v5, v4

    iget-object v4, v0, Lau0;->f:Lkotlin/jvm/functions/Function2;

    move-object v6, v5

    iget v5, v0, Lau0;->g:I

    move-object v8, v6

    iget-wide v6, v0, Lau0;->h:J

    move-object v10, v8

    iget-wide v8, v0, Lau0;->i:J

    move-object v11, v10

    iget-object v10, v0, Lau0;->j:Landroidx/compose/foundation/layout/WindowInsets;

    move-object v14, v11

    iget-object v11, v0, Lau0;->k:Lkotlin/jvm/functions/Function3;

    iget v0, v0, Lau0;->m:I

    move-object v15, v14

    move v14, v0

    move-object v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
