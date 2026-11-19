.class public final synthetic Lbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbu;->b:Ljava/lang/String;

    iput-object p2, p0, Lbu;->c:Ljava/lang/String;

    iput-object p3, p0, Lbu;->d:Ljava/lang/String;

    iput-object p4, p0, Lbu;->e:Ljava/lang/String;

    iput p5, p0, Lbu;->f:F

    iput p6, p0, Lbu;->g:F

    iput p7, p0, Lbu;->h:F

    iput p8, p0, Lbu;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lbu;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lbu;->b:Ljava/lang/String;

    iget-object v1, p0, Lbu;->c:Ljava/lang/String;

    iget-object v2, p0, Lbu;->d:Ljava/lang/String;

    iget-object v3, p0, Lbu;->e:Ljava/lang/String;

    iget v4, p0, Lbu;->f:F

    iget v5, p0, Lbu;->g:F

    iget v6, p0, Lbu;->h:F

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/formsections/DistantRepairContactComponentKt;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
