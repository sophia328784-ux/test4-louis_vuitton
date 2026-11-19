.class public final Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BottomBarConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\rB=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;",
        "Ljava/io/Serializable;",
        "",
        "isBottomBarVisible",
        "",
        "animationDuration",
        "Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;",
        "contentArrangement",
        "shouldDisplaySearchBar",
        "shouldDisplayNavItems",
        "switchAnimationDuration",
        "<init>",
        "(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZI)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

.field public static final i:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

.field public static final j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public final b:Z

.field public final c:I

.field public final d:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;

.field public final e:Z

.field public final f:Z

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    new-instance v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    sget-object v6, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;->ABOVE_BOTTOM_BAR:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x7d

    move-object v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;-><init>(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->i:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    new-instance v6, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    sget-object v9, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;->MAX_SIZE:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;

    const/16 v13, 0x38

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v14}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;-><init>(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    new-instance v3, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    const/4 v8, 0x1

    const/16 v9, 0x190

    const/4 v4, 0x1

    move-object v6, v5

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;-><init>(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZI)V

    move-object v5, v6

    new-instance v3, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;-><init>(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZI)V

    return-void
.end method

.method public constructor <init>(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZI)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->b:Z

    .line 29
    iput p2, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->c:I

    .line 30
    iput-object p3, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->d:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;

    .line 31
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->e:Z

    .line 32
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->f:Z

    .line 33
    iput p6, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->g:I

    return-void
.end method

.method public synthetic constructor <init>(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    :cond_1
    move v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const/16 p6, 0x190

    :cond_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;-><init>(ZILcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;ZZI)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->b:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->c:I

    iget v3, p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->c:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->d:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;

    iget-object v3, p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->d:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->e:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->f:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->g:I

    iget p1, p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->g:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->d:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->e:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BottomBarConfig(isBottomBarVisible="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animationDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentArrangement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->d:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$ContentArrangement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDisplaySearchBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDisplayNavItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", switchAnimationDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->g:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
