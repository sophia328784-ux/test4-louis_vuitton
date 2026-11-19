.class public final synthetic Lyt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;

.field public final synthetic c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;ILcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;ZLkotlin/jvm/functions/Function1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyt;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;

    iput p2, p0, Lyt;->c:I

    iput-object p3, p0, Lyt;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    iput-boolean p4, p0, Lyt;->e:Z

    iput-object p5, p0, Lyt;->f:Lkotlin/jvm/functions/Function1;

    iput p6, p0, Lyt;->g:I

    iput p7, p0, Lyt;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lyt;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Lyt;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;

    iget v1, p0, Lyt;->c:I

    iget-object v2, p0, Lyt;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;

    iget-boolean v3, p0, Lyt;->e:Z

    iget-object v4, p0, Lyt;->f:Lkotlin/jvm/functions/Function1;

    iget v7, p0, Lyt;->h:I

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairCardHeaderComponentKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;ILcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
