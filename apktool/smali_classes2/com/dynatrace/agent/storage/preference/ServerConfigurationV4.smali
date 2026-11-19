.class public final Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0080\u0008\u0018\u00002\u00020\u0001:\u0001\u0014Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;",
        "",
        "",
        "revision",
        "",
        "maxBeaconSizeKib",
        "maxEventSizeKib",
        "",
        "capture",
        "",
        "",
        "userInteractionsCapture",
        "tracestateKeyPrefix",
        "traceContextEnabled",
        "uaEnable",
        "uaActivityEndDelayMs",
        "uaActivityValidationDelayMs",
        "uaMaxDurationMs",
        "<init>",
        "(JIIZLjava/util/List;Ljava/lang/String;ZZIII)V",
        "Companion",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final l:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4$Companion;

.field public static final m:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->l:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4$Companion;

    new-instance v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v13, 0x64

    const v14, 0xc350

    const-wide/16 v3, 0x0

    const/16 v5, 0x400

    const/16 v6, 0x100

    const/4 v7, 0x1

    const-string v9, ""

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v12, 0x64

    invoke-direct/range {v2 .. v14}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;-><init>(JIIZLjava/util/List;Ljava/lang/String;ZZIII)V

    sput-object v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->m:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    return-void
.end method

.method public constructor <init>(JIIZLjava/util/List;Ljava/lang/String;ZZIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZIII)V"
        }
    .end annotation

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    .line 76
    iput p3, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->b:I

    .line 77
    iput p4, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->c:I

    .line 78
    iput-boolean p5, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->d:Z

    .line 79
    iput-object p6, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    .line 80
    iput-object p7, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    .line 81
    iput-boolean p8, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    .line 82
    iput-boolean p9, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    .line 83
    iput p10, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->i:I

    .line 84
    iput p11, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->j:I

    .line 85
    iput p12, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->k:I

    return-void
.end method

.method public synthetic constructor <init>(JIIZLjava/util/List;Ljava/lang/String;ZZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move/from16 v10, p8

    :goto_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move/from16 v11, p9

    :goto_2
    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x64

    if-eqz v1, :cond_3

    move v12, v2

    goto :goto_3

    :cond_3
    move/from16 v12, p10

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move v13, v2

    goto :goto_4

    :cond_4
    move/from16 v13, p11

    :goto_4
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5

    const v0, 0xc350

    move v14, v0

    :goto_5
    move-object v2, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    goto :goto_6

    :cond_5
    move/from16 v14, p12

    goto :goto_5

    :goto_6
    invoke-direct/range {v2 .. v14}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;-><init>(JIIZLjava/util/List;Ljava/lang/String;ZZIII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-wide v3, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    iget-wide v5, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->b:I

    iget v3, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->c:I

    iget v3, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->d:Z

    iget-boolean v3, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    iget-boolean v3, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    iget-boolean v3, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->i:I

    iget v3, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->i:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->j:I

    iget v3, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->j:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->k:I

    iget p1, p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->k:I

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget v2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->i:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->j:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->k:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServerConfigurationV4(revision="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBeaconSizeKib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxEventSizeKib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userInteractionsCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tracestateKeyPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", traceContextEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uaActivityEndDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uaActivityValidationDelayMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uaMaxDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->k:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
