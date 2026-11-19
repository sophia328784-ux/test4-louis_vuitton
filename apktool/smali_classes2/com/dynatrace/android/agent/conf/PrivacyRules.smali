.class public Lcom/dynatrace/android/agent/conf/PrivacyRules;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/dynatrace/android/agent/conf/PrivacyRules;

.field public static final c:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;


# instance fields
.field public final a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;

    new-instance v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;

    invoke-direct {v1}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;-><init>()V

    sget-object v2, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->USER_BEHAVIOR:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v1, v2}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->a(Lcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->b:Z

    iget-object v2, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->d:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->c:Z

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->d:Ljava/lang/Boolean;

    new-instance v2, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    invoke-direct {v2, v1}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;-><init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;)V

    invoke-direct {v0, v2}, Lcom/dynatrace/android/agent/conf/PrivacyRules;-><init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;)V

    sput-object v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->b:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    new-instance v0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;-><init>()V

    sget-object v1, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->OFF:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v0, v1}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->a(Lcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    new-instance v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;-><init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;)V

    sput-object v1, Lcom/dynatrace/android/agent/conf/PrivacyRules;->c:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/EventType;)Z
    .locals 1

    sget-object v0, Lcom/dynatrace/android/agent/EventType;->CRASH:Lcom/dynatrace/android/agent/EventType;

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    if-ne p1, v0, :cond_0

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    return p0

    :cond_0
    sget-object v0, Lcom/dynatrace/android/agent/EventType;->ACTION_AUTO_LOADING_APP:Lcom/dynatrace/android/agent/EventType;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    sget-object p1, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->OFF:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/dynatrace/android/agent/EventType;->a()Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-gt p1, p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
