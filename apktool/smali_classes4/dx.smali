.class public final synthetic Ldx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Integer;

.field public final synthetic g:I

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IIILjava/lang/Integer;IZLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldx;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Ldx;->c:I

    iput p3, p0, Ldx;->d:I

    iput p4, p0, Ldx;->e:I

    iput-object p5, p0, Ldx;->f:Ljava/lang/Integer;

    iput p6, p0, Ldx;->g:I

    iput-boolean p7, p0, Ldx;->h:Z

    iput-object p8, p0, Ldx;->i:Ljava/lang/String;

    iput p9, p0, Ldx;->j:I

    iput p10, p0, Ldx;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ldx;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Ldx;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Ldx;->c:I

    iget v2, p0, Ldx;->d:I

    iget v3, p0, Ldx;->e:I

    iget-object v4, p0, Ldx;->f:Ljava/lang/Integer;

    iget v5, p0, Ldx;->g:I

    iget-boolean v6, p0, Ldx;->h:Z

    iget-object v7, p0, Ldx;->i:Ljava/lang/String;

    iget v10, p0, Ldx;->k:I

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/services/components/FeatureSlideshowItemKt;->a(Landroidx/compose/ui/Modifier;IIILjava/lang/Integer;IZLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
