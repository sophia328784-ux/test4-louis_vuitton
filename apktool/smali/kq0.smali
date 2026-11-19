.class public final synthetic Lkq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JFJIFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkq0;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lkq0;->c:J

    iput p4, p0, Lkq0;->d:F

    iput-wide p5, p0, Lkq0;->e:J

    iput p7, p0, Lkq0;->f:I

    iput p8, p0, Lkq0;->g:F

    iput p9, p0, Lkq0;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lkq0;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lkq0;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Lkq0;->c:J

    iget v3, p0, Lkq0;->d:F

    iget-wide v4, p0, Lkq0;->e:J

    iget v6, p0, Lkq0;->f:I

    iget v7, p0, Lkq0;->g:F

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/ProgressIndicatorKt;->a(Landroidx/compose/ui/Modifier;JFJIFLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
