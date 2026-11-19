.class public final Lcom/dynatrace/agent/storage/preference/MetricsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u00c9\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dynatrace/agent/storage/preference/MetricsData;",
        "",
        "",
        "deviceScreenWidth",
        "deviceScreenHeight",
        "deviceOrientation",
        "deviceBatteryLevel",
        "",
        "locationLatitude",
        "locationLongitude",
        "",
        "deviceManufacturer",
        "deviceModelIdentifier",
        "",
        "deviceIsRooted",
        "osName",
        "osVersion",
        "bundle",
        "Lcom/dynatrace/agent/metrics/AppVersion;",
        "appVersion",
        "instanceId",
        "sessionId",
        "networkType",
        "crashReportingOptIn",
        "sessionActive",
        "<init>",
        "(IIIILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/agent/metrics/AppVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V",
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


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/Double;

.field public final f:Ljava/lang/Double;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/dynatrace/agent/metrics/AppVersion;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Z


# direct methods
.method public constructor <init>()V
    .locals 21

    .line 220
    const v19, 0x3ffff

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v20}, Lcom/dynatrace/agent/storage/preference/MetricsData;-><init>(IIIILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/agent/metrics/AppVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/agent/metrics/AppVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    move-object/from16 v0, p14

    move-object/from16 v1, p15

    move-object/from16 v2, p16

    .line 200
    invoke-static {p10, v0, v1, v2}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->a:I

    .line 203
    iput p2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->b:I

    .line 204
    iput p3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->c:I

    .line 205
    iput p4, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->d:I

    .line 206
    iput-object p5, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->e:Ljava/lang/Double;

    .line 207
    iput-object p6, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->f:Ljava/lang/Double;

    .line 208
    iput-object p7, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->g:Ljava/lang/String;

    .line 209
    iput-object p8, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->h:Ljava/lang/String;

    .line 210
    iput-boolean p9, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->i:Z

    .line 211
    iput-object p10, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->j:Ljava/lang/String;

    .line 212
    iput-object p11, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->k:Ljava/lang/String;

    .line 213
    iput-object p12, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->l:Ljava/lang/String;

    move-object/from16 p1, p13

    .line 214
    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->m:Lcom/dynatrace/agent/metrics/AppVersion;

    .line 215
    iput-object v0, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->n:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->o:Ljava/lang/String;

    .line 217
    iput-object v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->p:Ljava/lang/String;

    move/from16 p1, p17

    .line 218
    iput-boolean p1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->q:Z

    move/from16 p1, p18

    .line 219
    iput-boolean p1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->r:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/agent/metrics/AppVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v2, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    move-object v5, v6

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v6

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v6

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v6

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const-string v12, "Android"

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    move-object v13, v6

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    move-object v14, v6

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v6, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    const-string v16, ""

    if-eqz v15, :cond_d

    move-object/from16 v15, v16

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v11, v0, 0x4000

    if-eqz v11, :cond_e

    move-object/from16 v11, v16

    goto :goto_e

    :cond_e
    move-object/from16 v11, p15

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v0, v0, v18

    if-eqz v0, :cond_11

    const/16 p19, 0x0

    :goto_11
    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p5, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p6, v5

    move-object/from16 p14, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v10

    move-object/from16 p16, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    move/from16 p18, v17

    goto :goto_12

    :cond_11
    move/from16 p19, p18

    goto :goto_11

    :goto_12
    invoke-direct/range {p1 .. p19}, Lcom/dynatrace/agent/storage/preference/MetricsData;-><init>(IIIILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/agent/metrics/AppVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static a(Lcom/dynatrace/agent/storage/preference/MetricsData;IIIILjava/lang/Double;Ljava/lang/Double;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/dynatrace/agent/storage/preference/MetricsData;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->a:I

    move v4, v2

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->b:I

    move v5, v2

    goto :goto_1

    :cond_1
    move/from16 v5, p2

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->c:I

    move v6, v2

    goto :goto_2

    :cond_2
    move/from16 v6, p3

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->d:I

    move v7, v2

    goto :goto_3

    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->e:Ljava/lang/Double;

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->f:Ljava/lang/Double;

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    iget-object v10, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->g:Ljava/lang/String;

    iget-object v11, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->h:Ljava/lang/String;

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->i:Z

    move v12, v2

    goto :goto_6

    :cond_6
    move/from16 v12, p7

    :goto_6
    iget-object v13, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->j:Ljava/lang/String;

    iget-object v14, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->k:Ljava/lang/String;

    iget-object v15, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->l:Ljava/lang/String;

    iget-object v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->m:Lcom/dynatrace/agent/metrics/AppVersion;

    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->n:Ljava/lang/String;

    move-object/from16 v17, v3

    goto :goto_7

    :cond_7
    move-object/from16 v17, p8

    :goto_7
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->o:Ljava/lang/String;

    move-object/from16 v18, v3

    goto :goto_8

    :cond_8
    move-object/from16 v18, p9

    :goto_8
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->p:Ljava/lang/String;

    move-object/from16 v19, v3

    goto :goto_9

    :cond_9
    move-object/from16 v19, p10

    :goto_9
    const/high16 v3, 0x10000

    and-int/2addr v3, v1

    if-eqz v3, :cond_a

    iget-boolean v3, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->q:Z

    move/from16 v20, v3

    goto :goto_a

    :cond_a
    move/from16 v20, p11

    :goto_a
    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->r:Z

    move/from16 v21, v1

    goto :goto_b

    :cond_b
    move/from16 v21, p12

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/dynatrace/agent/storage/preference/MetricsData;

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v21}, Lcom/dynatrace/agent/storage/preference/MetricsData;-><init>(IIIILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/agent/metrics/AppVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->a:I

    iget v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->b:I

    iget v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->c:I

    iget v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->d:I

    iget v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->e:Ljava/lang/Double;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->e:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->f:Ljava/lang/Double;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->f:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->i:Z

    iget-boolean v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->m:Lcom/dynatrace/agent/metrics/AppVersion;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->m:Lcom/dynatrace/agent/metrics/AppVersion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->q:Z

    iget-boolean v3, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->q:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean p0, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->r:Z

    iget-boolean p1, p1, Lcom/dynatrace/agent/storage/preference/MetricsData;->r:Z

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->d:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->e:Ljava/lang/Double;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->f:Ljava/lang/Double;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->g:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->h:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->i:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->j:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->k:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->l:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->m:Lcom/dynatrace/agent/metrics/AppVersion;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Lcom/dynatrace/agent/metrics/AppVersion;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->q:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->r:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetricsData(deviceScreenWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceScreenHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deviceBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", locationLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->e:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locationLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->f:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceManufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceModelIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceIsRooted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", osName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", osVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->m:Lcom/dynatrace/agent/metrics/AppVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", crashReportingOptIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sessionActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/agent/storage/preference/MetricsData;->r:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
