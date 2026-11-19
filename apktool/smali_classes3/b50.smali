.class public final synthetic Lb50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic g:J

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IIZLandroidx/compose/ui/text/TextStyle;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb50;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lb50;->c:I

    iput p3, p0, Lb50;->d:I

    iput-boolean p4, p0, Lb50;->e:Z

    iput-object p5, p0, Lb50;->f:Landroidx/compose/ui/text/TextStyle;

    iput-wide p6, p0, Lb50;->g:J

    iput p8, p0, Lb50;->h:I

    iput p9, p0, Lb50;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lb50;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lb50;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lb50;->c:I

    iget v2, p0, Lb50;->d:I

    iget-boolean v3, p0, Lb50;->e:Z

    iget-object v4, p0, Lb50;->f:Landroidx/compose/ui/text/TextStyle;

    iget-wide v5, p0, Lb50;->g:J

    iget v9, p0, Lb50;->i:I

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/designkit/components/components/LVAnimatedDigitsKt;->a(Landroidx/compose/ui/Modifier;IIZLandroidx/compose/ui/text/TextStyle;JLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
