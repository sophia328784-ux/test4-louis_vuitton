.class public final Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u008b\u0001\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;",
        "",
        "",
        "is3rdGenEnabled",
        "isTouchInteractionEnabled",
        "",
        "tracestateKeyPrefix",
        "instanceId",
        "sessionId",
        "applicationId",
        "",
        "dataCollectionLevel",
        "crashReporting",
        "trafficControl",
        "agentStatus",
        "traceContextEnabled",
        "sessionReplayEnabled",
        "replayMetricsEnabled",
        "<init>",
        "(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZ)V",
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
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public final m:Z


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 169
    const/16 v14, 0x1fff

    const/4 v15, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 16

    .line 134
    const/16 v14, 0x1ffe

    const/4 v15, 0x0

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

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 16

    .line 135
    const/16 v14, 0x1ffc

    const/4 v15, 0x0

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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 16

    .line 136
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v14, 0x1ff8

    const/4 v15, 0x0

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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 137
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v14, 0x1ff0

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 138
    invoke-static/range {p3 .. p5}, Lcj;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x1fe0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 139
    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 140
    invoke-static/range {p3 .. p6}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x1fc0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 141
    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    .line 142
    invoke-static/range {p3 .. p6}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x1f80

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 143
    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 16

    .line 144
    invoke-static/range {p3 .. p6}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x1f00

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 145
    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 16

    .line 146
    invoke-static/range {p3 .. p6}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x1e00

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 147
    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 16

    .line 148
    invoke-static/range {p3 .. p6}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x1c00

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 149
    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V
    .locals 16

    .line 150
    invoke-static/range {p3 .. p6}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x1800

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 151
    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZ)V
    .locals 16

    .line 152
    invoke-static/range {p3 .. p6}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x1000

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 153
    invoke-direct/range {v0 .. v15}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZ)V
    .locals 0

    .line 154
    invoke-static {p3, p4, p5, p6}, Ld21;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->a:Z

    .line 157
    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->b:Z

    .line 158
    iput-object p3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->c:Ljava/lang/String;

    .line 159
    iput-object p4, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->d:Ljava/lang/String;

    .line 160
    iput-object p5, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->e:Ljava/lang/String;

    .line 161
    iput-object p6, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->f:Ljava/lang/String;

    .line 162
    iput p7, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->g:I

    .line 163
    iput-boolean p8, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->h:Z

    .line 164
    iput-boolean p9, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->i:Z

    .line 165
    iput-boolean p10, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->j:Z

    .line 166
    iput-boolean p11, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->k:Z

    .line 167
    iput-boolean p12, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->l:Z

    .line 168
    iput-boolean p13, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    const-string v4, ""

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_1

    :cond_2
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_2

    :cond_3
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v4

    goto :goto_3

    :cond_4
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v4, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    move v7, v2

    goto :goto_5

    :cond_6
    move/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    move v8, v2

    goto :goto_6

    :cond_7
    move/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v2, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    const/4 v10, 0x1

    if-eqz v9, :cond_9

    move v9, v10

    goto :goto_8

    :cond_9
    move/from16 v9, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    move v11, v10

    goto :goto_9

    :cond_a
    move/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    move v12, v10

    goto :goto_a

    :cond_b
    move/from16 v12, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move/from16 p14, v10

    :goto_b
    move p2, p1

    move/from16 p3, v1

    move/from16 p10, v2

    move-object/from16 p4, v3

    move-object/from16 p7, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p11, v9

    move/from16 p12, v11

    move/from16 p13, v12

    move-object p1, p0

    goto :goto_c

    :cond_c
    move/from16 p14, p13

    goto :goto_b

    :goto_c
    invoke-direct/range {p1 .. p14}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;
    .locals 14

    new-instance v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->a:Z

    iget-boolean v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->b:Z

    iget-object v3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->f:Ljava/lang/String;

    iget v7, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->g:I

    iget-boolean v8, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->h:Z

    iget-boolean v9, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->i:Z

    iget-boolean v10, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->j:Z

    iget-boolean v11, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->k:Z

    iget-boolean v12, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->l:Z

    iget-boolean v13, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->m:Z

    invoke-direct/range {v0 .. v13}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZ)V

    return-object v0
.end method
