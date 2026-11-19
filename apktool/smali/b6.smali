.class public final synthetic Lb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/selection/OffsetProvider;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/ui/Modifier;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/Modifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb6;->b:Landroidx/compose/foundation/text/selection/OffsetProvider;

    iput-boolean p2, p0, Lb6;->c:Z

    iput-object p3, p0, Lb6;->d:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iput-boolean p4, p0, Lb6;->e:Z

    iput-wide p5, p0, Lb6;->f:J

    iput p7, p0, Lb6;->g:F

    iput-object p8, p0, Lb6;->h:Landroidx/compose/ui/Modifier;

    iput p9, p0, Lb6;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lb6;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lb6;->b:Landroidx/compose/foundation/text/selection/OffsetProvider;

    iget-boolean v1, p0, Lb6;->c:Z

    iget-object v2, p0, Lb6;->d:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iget-boolean v3, p0, Lb6;->e:Z

    iget-wide v4, p0, Lb6;->f:J

    iget v6, p0, Lb6;->g:F

    iget-object v7, p0, Lb6;->h:Landroidx/compose/ui/Modifier;

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->b(Landroidx/compose/foundation/text/selection/OffsetProvider;ZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZJFLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
