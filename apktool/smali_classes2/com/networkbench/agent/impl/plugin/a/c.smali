.class public Lcom/networkbench/agent/impl/plugin/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/a/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;

.field private static b:Z


# instance fields
.field private c:Landroid/telephony/TelephonyManager;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/plugin/a/c;->a:Lcom/networkbench/agent/impl/c/e;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/networkbench/agent/impl/plugin/a/c;->b:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/a/c;->c:Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/a/c;->d:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/networkbench/agent/impl/plugin/a/c$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/plugin/a/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 176
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 177
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/networkbench/agent/impl/plugin/a/a;
    .locals 2

    .line 132
    new-instance v0, Lcom/networkbench/agent/impl/plugin/a/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/a/a;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/plugin/a/a;->a:Z

    .line 134
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/a/c;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/networkbench/agent/impl/plugin/a/a;->c:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/a/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/networkbench/agent/impl/plugin/a/a;->b:I

    .line 136
    instance-of v1, p1, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_0

    .line 137
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Lcom/networkbench/agent/impl/plugin/a/a;Landroid/telephony/CellInfoLte;)V

    .line 138
    :cond_0
    instance-of v1, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v1, :cond_1

    .line 139
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfoGsm;

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Lcom/networkbench/agent/impl/plugin/a/a;Landroid/telephony/CellInfoGsm;)V

    .line 140
    :cond_1
    instance-of v1, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_2

    .line 141
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfoCdma;

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Lcom/networkbench/agent/impl/plugin/a/a;Landroid/telephony/CellInfoCdma;)V

    :cond_2
    const/16 v1, 0x12

    .line 142
    invoke-direct {p0, v1}, Lcom/networkbench/agent/impl/plugin/a/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    instance-of v1, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_3

    .line 144
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Lcom/networkbench/agent/impl/plugin/a/a;Landroid/telephony/CellInfoWcdma;)V

    .line 145
    :cond_3
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Lcom/networkbench/agent/impl/plugin/a/a;)V

    return-object v0
.end method

.method public static a()Lcom/networkbench/agent/impl/plugin/a/c;
    .locals 1

    .line 125
    sget-object v0, Lcom/networkbench/agent/impl/plugin/a/c$a;->a:Lcom/networkbench/agent/impl/plugin/a/c;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 178
    const-string p0, "="

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    :try_start_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 180
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 181
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 183
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 184
    sget-object v5, Lcom/networkbench/agent/impl/plugin/a/c;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error keyvalue info:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 185
    :cond_0
    aget-object v4, v5, v2

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 186
    :goto_2
    sget-object p1, Lcom/networkbench/agent/impl/plugin/a/c;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseString error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-static {p0, v1, p1}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    return-object v0
.end method

.method private a(Lcom/networkbench/agent/impl/plugin/a/a;)V
    .locals 1

    .line 146
    iget-boolean v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->a:Z

    if-nez v0, :cond_0

    .line 147
    const-string v0, ""

    iput-object v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->c:Ljava/lang/String;

    .line 148
    :cond_0
    iget v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->d:I

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->b(I)I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->d:I

    .line 149
    iget v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->e:I

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->b(I)I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->e:I

    .line 150
    iget v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->f:I

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->b(I)I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->f:I

    .line 151
    iget v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->g:I

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->b(I)I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->g:I

    .line 152
    iget v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->h:I

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->b(I)I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->h:I

    .line 153
    iget v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->i:I

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->b(I)I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->i:I

    .line 154
    iget v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->j:I

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->b(I)I

    move-result p0

    iput p0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->j:I

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/plugin/a/a;Landroid/telephony/CellInfoCdma;)V
    .locals 0

    .line 128
    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/plugin/a/a;Landroid/telephony/CellInfoGsm;)V
    .locals 0

    .line 170
    invoke-virtual {p2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result p0

    iput p0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->d:I

    .line 171
    invoke-virtual {p2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result p0

    iput p0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->e:I

    .line 172
    invoke-virtual {p2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    iput p0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->f:I

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/plugin/a/a;Landroid/telephony/CellInfoWcdma;)V
    .locals 0

    .line 173
    invoke-virtual {p2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result p0

    iput p0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->d:I

    .line 174
    invoke-virtual {p2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result p0

    iput p0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->e:I

    .line 175
    invoke-virtual {p2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    iput p0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->f:I

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 126
    sput-boolean p0, Lcom/networkbench/agent/impl/plugin/a/c;->b:Z

    return-void
.end method

.method private a(I)Z
    .locals 0

    .line 127
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/telephony/CellInfo;Ljava/lang/String;)Z
    .locals 2

    .line 155
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 157
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/plugin/a/c;->b(Landroid/telephony/CellInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Landroid/telephony/CellInfo;Lorg/json/JSONArray;)Z
    .locals 3

    .line 158
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move p0, v0

    .line 159
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 160
    invoke-virtual {p2, p0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private b(I)I
    .locals 0

    .line 68
    const p0, 0x7fffffff

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private b()Z
    .locals 2

    .line 65
    sget-boolean v0, Lcom/networkbench/agent/impl/plugin/a/c;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 66
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/a/c;->d:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 67
    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private b(Landroid/telephony/CellInfo;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/a/c;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "I)",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/plugin/a/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/a/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/a/c;->c()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/networkbench/agent/impl/plugin/a/c;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cellInfoTypeName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", numLImit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-direct {p0, v3, p1}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Landroid/telephony/CellInfo;Lorg/json/JSONArray;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/networkbench/agent/impl/plugin/a/c;->a:Lcom/networkbench/agent/impl/c/e;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "null"

    :goto_1
    const-string v5, "cellinfo classname:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int v4, p2, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v4, v5, :cond_5

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_5
    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Landroid/telephony/CellInfo;)Lcom/networkbench/agent/impl/plugin/a/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Ljava/util/List;)V

    return-object v0
.end method

.method public a(Lcom/networkbench/agent/impl/plugin/a/a;Landroid/telephony/CellInfoLte;)V
    .locals 1

    .line 162
    invoke-virtual {p2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->d:I

    .line 163
    invoke-virtual {p2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->e:I

    .line 164
    invoke-virtual {p2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->f:I

    .line 165
    invoke-virtual {p2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->g:I

    .line 166
    invoke-virtual {p2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->h:I

    .line 167
    invoke-virtual {p2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/CellSignalStrengthLte;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 168
    const-string v0, "rsrp"

    invoke-direct {p0, p2, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->i:I

    .line 169
    const-string v0, "rsrq"

    invoke-direct {p0, p2, v0}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Ljava/util/Map;Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/networkbench/agent/impl/plugin/a/a;->j:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/plugin/a/a;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/plugin/a/c$1;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/plugin/a/c$1;-><init>(Lcom/networkbench/agent/impl/plugin/a/c;)V

    .line 131
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public b(Ljava/util/List;)Lcom/networkbench/agent/impl/plugin/a/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/networkbench/agent/impl/plugin/a/a;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/networkbench/agent/impl/plugin/a/c;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "getRegisterCellInfo isEnvironmentGood is true"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/a/c;->c()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    invoke-direct {p0, v4, v2}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Landroid/telephony/CellInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/plugin/a/c;->a(Landroid/telephony/CellInfo;)Lcom/networkbench/agent/impl/plugin/a/a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_3
    return-object v0
.end method
