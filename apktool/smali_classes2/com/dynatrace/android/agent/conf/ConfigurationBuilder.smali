.class public abstract Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/dynatrace/android/agent/conf/AgentMode;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:[Ljava/lang/String;

.field public final i:[Ljava/lang/String;

.field public final j:Z

.field public k:Z

.field public l:Z

.field public final m:Z

.field public final n:I

.field public final o:I

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:[Ljava/lang/String;

.field public final t:Lcom/dynatrace/agent/common/InstrumentationFlavor;

.field public final u:Z

.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/AgentMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/dynatrace/android/agent/conf/ConfigurationPreset;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPreset;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->h:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->i:[Ljava/lang/String;

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->a:Lcom/dynatrace/android/agent/conf/AgentMode;

    iput-object p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->c:Ljava/lang/String;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->d:Z

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->j:Z

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->k:Z

    new-array p3, v0, [Ljava/lang/String;

    invoke-static {p3}, Lcom/dynatrace/android/agent/conf/BuilderUtil;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->h:[Ljava/lang/String;

    :cond_0
    new-array p3, v0, [Ljava/lang/String;

    invoke-static {p3}, Lcom/dynatrace/android/agent/conf/BuilderUtil;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->i:[Ljava/lang/String;

    :cond_1
    sget-object p3, Lcom/dynatrace/android/agent/conf/AgentMode;->APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-eq p1, p3, :cond_2

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->l:Z

    :cond_2
    const/16 p1, 0x1f4

    iput p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->n:I

    const p1, 0xea60

    iput p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->o:I

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->q:Z

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->m:Z

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->r:Z

    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->s:[Ljava/lang/String;

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->e:Z

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->f:Z

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->g:Z

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->p:Z

    sget-object p1, Lcom/dynatrace/agent/common/InstrumentationFlavor;->PLAIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->t:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->u:Z

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->v:I

    return-void
.end method
