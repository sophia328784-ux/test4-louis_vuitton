.class public final synthetic Lr80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function4;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;JIFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr80;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lr80;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lr80;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lr80;->e:J

    iput p6, p0, Lr80;->f:I

    iput p7, p0, Lr80;->g:F

    iput-object p8, p0, Lr80;->h:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lr80;->i:Lkotlin/jvm/functions/Function4;

    iput p10, p0, Lr80;->j:I

    iput p11, p0, Lr80;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lr80;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lr80;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lr80;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lr80;->d:Landroidx/compose/ui/Modifier;

    iget-wide v3, p0, Lr80;->e:J

    iget v5, p0, Lr80;->f:I

    iget v6, p0, Lr80;->g:F

    iget-object v7, p0, Lr80;->h:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lr80;->i:Lkotlin/jvm/functions/Function4;

    iget v11, p0, Lr80;->k:I

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/compose/components/LVTimelineKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;JIFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
