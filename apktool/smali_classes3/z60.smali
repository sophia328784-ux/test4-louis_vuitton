.class public final synthetic Lz60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:F

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/Long;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IIFJJLjava/lang/Long;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz60;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lz60;->c:I

    iput p3, p0, Lz60;->d:I

    iput p4, p0, Lz60;->e:F

    iput-wide p5, p0, Lz60;->f:J

    iput-wide p7, p0, Lz60;->g:J

    iput-object p9, p0, Lz60;->h:Ljava/lang/Long;

    iput-object p10, p0, Lz60;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x31

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v0, p0, Lz60;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lz60;->c:I

    iget v2, p0, Lz60;->d:I

    iget v3, p0, Lz60;->e:F

    iget-wide v4, p0, Lz60;->f:J

    iget-wide v6, p0, Lz60;->g:J

    iget-object v8, p0, Lz60;->h:Ljava/lang/Long;

    iget-object v9, p0, Lz60;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVProgressIndicatorKt;->b(Landroidx/compose/ui/Modifier;IIFJJLjava/lang/Long;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
