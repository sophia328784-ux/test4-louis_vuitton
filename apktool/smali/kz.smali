.class public final synthetic Lkz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/material3/FloatingActionButtonElevation;

.field public final synthetic h:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkz;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lkz;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lkz;->d:Landroidx/compose/ui/graphics/Shape;

    iput-wide p4, p0, Lkz;->e:J

    iput-wide p6, p0, Lkz;->f:J

    iput-object p8, p0, Lkz;->g:Landroidx/compose/material3/FloatingActionButtonElevation;

    iput-object p9, p0, Lkz;->h:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0xc00001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lkz;->b:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lkz;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lkz;->d:Landroidx/compose/ui/graphics/Shape;

    iget-wide v3, p0, Lkz;->e:J

    iget-wide v5, p0, Lkz;->f:J

    iget-object v7, p0, Lkz;->g:Landroidx/compose/material3/FloatingActionButtonElevation;

    iget-object v8, p0, Lkz;->h:Lkotlin/jvm/functions/Function3;

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/FloatingActionButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
