.class public final synthetic Lbv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(IIIZILkotlin/jvm/functions/Function0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbv0;->b:I

    iput p2, p0, Lbv0;->c:I

    iput p3, p0, Lbv0;->d:I

    iput-boolean p4, p0, Lbv0;->e:Z

    iput p5, p0, Lbv0;->f:I

    iput-object p6, p0, Lbv0;->g:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Lbv0;->h:I

    iput p8, p0, Lbv0;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lbv0;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget v0, p0, Lbv0;->b:I

    iget v1, p0, Lbv0;->c:I

    iget v2, p0, Lbv0;->d:I

    iget-boolean v3, p0, Lbv0;->e:Z

    iget v4, p0, Lbv0;->f:I

    iget-object v5, p0, Lbv0;->g:Lkotlin/jvm/functions/Function0;

    iget v8, p0, Lbv0;->i:I

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/services/components/ServiceItemKt;->a(IIIZILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
