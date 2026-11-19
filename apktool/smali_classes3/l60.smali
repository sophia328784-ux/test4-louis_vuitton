.class public final synthetic Ll60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll60;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ll60;->c:Ljava/lang/String;

    iput-object p3, p0, Ll60;->d:Ljava/lang/String;

    iput-wide p4, p0, Ll60;->e:J

    iput-wide p6, p0, Ll60;->f:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Ll60;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Ll60;->c:Ljava/lang/String;

    iget-object v2, p0, Ll60;->d:Ljava/lang/String;

    iget-wide v3, p0, Ll60;->e:J

    iget-wide v5, p0, Ll60;->f:J

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JJLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
