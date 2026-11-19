.class public Lcom/dynatrace/android/agent/CustomSegment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/Segment;


# static fields
.field public static final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final t:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:Z

.field public f:Z

.field public g:I

.field public final h:Lcom/dynatrace/android/agent/data/Session;

.field public final i:I

.field public j:Lcom/dynatrace/android/agent/EventType;

.field public k:Lcom/dynatrace/android/agent/DTXActionImpl;

.field public l:Lcom/dynatrace/android/agent/DTXActionImpl;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final o:Ljava/lang/String;

.field public final p:I

.field public final q:J

.field public final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/dynatrace/android/agent/CustomSegment;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0xc8

    sput v0, Lcom/dynatrace/android/agent/CustomSegment;->t:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JIJJLcom/dynatrace/android/agent/data/Session;IZ)V
    .locals 6

    move-object/from16 v0, p11

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    .line 114
    iput-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    .line 115
    iput-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    const-wide/16 v1, 0x0

    .line 116
    iput-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    const/4 v3, 0x0

    .line 117
    iput-boolean v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    const/4 v4, 0x1

    .line 118
    iput-boolean v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->f:Z

    const/4 v5, 0x0

    .line 119
    iput-object v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->k:Lcom/dynatrace/android/agent/DTXActionImpl;

    .line 120
    iput-object v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    .line 121
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    const-string v3, ""

    iput-object v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    .line 125
    iput p2, p0, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    .line 126
    iput-object p3, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    .line 127
    iput-wide p7, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    move-wide p2, p9

    .line 128
    iput-wide p2, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    .line 129
    iput-wide p4, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    .line 130
    iput-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    .line 131
    iput p6, p0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    move/from16 p2, p12

    .line 132
    iput p2, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    .line 133
    iput-boolean v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-nez p1, :cond_0

    .line 134
    iput-object v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 p2, 0xfa

    .line 135
    invoke-static {p2, p1}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    :goto_0
    cmp-long p1, p4, v1

    if-nez p1, :cond_1

    .line 136
    sget-object p1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide p1

    .line 137
    invoke-virtual {v0, p1, p2}, Lcom/dynatrace/android/agent/data/Session;->j(J)V

    :cond_1
    move/from16 p1, p13

    .line 138
    iput-boolean p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->r:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    iput-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->f:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->k:Lcom/dynatrace/android/agent/DTXActionImpl;

    iput-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v4, ""

    iput-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    iput-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    iput-object p6, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iput p2, p0, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    iput-object p3, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {p6}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    iput-wide v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    iput-wide p4, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    sget-object p3, Lcom/dynatrace/android/agent/util/Utility;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    sget-object p3, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p3

    iput p3, p0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    iput p7, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-nez p1, :cond_1

    iput-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 p2, 0xfa

    invoke-static {p2, p1}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    :goto_0
    cmp-long p1, p4, v0

    if-nez p1, :cond_2

    sget-object p1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide p1

    invoke-virtual {p6, p1, p2}, Lcom/dynatrace/android/agent/data/Session;->j(J)V

    :cond_2
    iput-boolean p8, p0, Lcom/dynatrace/android/agent/CustomSegment;->r:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/dynatrace/android/agent/data/Session;IZ)V
    .locals 5

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 140
    iput-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    .line 141
    iput-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    const/4 v2, 0x0

    .line 143
    iput-boolean v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    const/4 v3, 0x1

    .line 144
    iput-boolean v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->f:Z

    const/4 v4, 0x0

    .line 145
    iput-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->k:Lcom/dynatrace/android/agent/DTXActionImpl;

    .line 146
    iput-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    .line 147
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 149
    const-string v2, ""

    iput-object v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    .line 150
    iput-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    .line 151
    iput p2, p0, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    .line 152
    sget-object p2, Lcom/dynatrace/android/agent/util/Utility;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 153
    iput-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    .line 154
    iput-object p3, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    .line 155
    iput p4, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    if-nez p1, :cond_0

    .line 156
    iput-object v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 p2, 0xfa

    .line 157
    invoke-static {p2, p1}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    .line 158
    :goto_0
    iput-boolean p5, p0, Lcom/dynatrace/android/agent/CustomSegment;->r:Z

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public h()Ljava/lang/StringBuilder;
    .locals 3

    const-string v0, "et="

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/EventType;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/dynatrace/android/agent/CustomSegment$1;->a:[I

    iget-object v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "&vl="

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "&na="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&pl="

    invoke-static {v2, v1, v0}, Lcom/dynatrace/android/agent/CustomSegment;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, "&t0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/CustomSegment;->i(Ljava/lang/StringBuilder;)V

    const-string v1, "&ev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/dynatrace/android/agent/crash/PlatformType;->CUSTOM:Lcom/dynatrace/android/agent/crash/PlatformType;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/crash/PlatformType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/CustomSegment;->i(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/CustomSegment;->i(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/CustomSegment;->i(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/CustomSegment;->i(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/dynatrace/android/agent/CustomSegment;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/CustomSegment;->i(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "&fw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->r:Z

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_1

    :cond_0
    const-string p0, "0"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "&na="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&it="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&pa="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&s0="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&t0="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public j()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()I
    .locals 0

    iget p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    return p0
.end method

.method public final l()Z
    .locals 1

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    sget v0, Lcom/dynatrace/android/agent/CustomSegment;->t:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m()V
    .locals 4

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/CustomSegment;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/dynatrace/android/agent/CustomSegment;->n(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dynatrace/android/agent/CustomSegment;->n(J)V

    return-void
.end method

.method public final n(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    iget-wide p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    sget-object p1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide p1

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/android/agent/data/Session;->j(J)V

    :cond_0
    return-void
.end method
