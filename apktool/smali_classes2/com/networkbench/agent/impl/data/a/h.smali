.class public Lcom/networkbench/agent/impl/data/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Lcom/networkbench/agent/impl/asyncaction/r; = null

.field private static final c:Ljava/lang/String; = "NBSEventActionManager"

.field private static final d:Lcom/networkbench/agent/impl/c/e;

.field private static e:Ljava/lang/reflect/Method; = null

.field private static final f:Ljava/lang/String; = "Touch on "

.field private static final g:Ljava/lang/String; = "Resource Id: "

.field private static final h:Ljava/lang/String; = "Initiate "

.field private static i:Lcom/networkbench/agent/impl/data/a/a;

.field private static j:Lcom/networkbench/agent/impl/data/a/g;

.field private static k:Landroid/content/Context;

.field private static l:Lcom/networkbench/agent/impl/asyncaction/a;

.field private static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v0, ""

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->i:Lcom/networkbench/agent/impl/data/a/a;

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->j:Lcom/networkbench/agent/impl/data/a/g;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/networkbench/agent/impl/data/a/h;->k:Landroid/content/Context;

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->l:Lcom/networkbench/agent/impl/asyncaction/a;

    new-instance v0, Lcom/networkbench/agent/impl/crash/e$a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/crash/e$a;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->m:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 174
    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->k:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    instance-of v1, p0, Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 177
    :cond_1
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->e:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getTitle"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/networkbench/agent/impl/data/a/h;->e:Ljava/lang/reflect/Method;

    .line 179
    :cond_2
    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->e:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    .line 180
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_3

    .line 181
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_3
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_4

    return-object v0

    .line 182
    :cond_4
    new-instance v0, Landroid/view/View;

    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    sget v1, Lcom/networkbench/R$string;->view_menuitem_attached_id:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 159
    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 164
    :cond_0
    instance-of v1, p0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    return-object v0

    .line 165
    :cond_1
    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 166
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 167
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/data/a/h;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static a(Landroid/view/View;Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Initiate "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 170
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_3

    .line 171
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Touch on "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 173
    :cond_2
    const-string p0, "Resource Id: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 160
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 198
    invoke-static {p0, p1, p2, v0}, Lcom/networkbench/agent/impl/data/a/h;->a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;ZI)V

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Landroid/view/View;ZI)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUserActionbegin !!!!!!! actionType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSEventActionManager"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "on"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/data/a/h;->a(Landroid/view/View;Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/networkbench/agent/impl/data/a/h;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v0, v2, v3}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/data/a/h;->g(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/data/a/h;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/networkbench/agent/impl/data/a/a;

    invoke-direct {v3, v0}, Lcom/networkbench/agent/impl/data/a/a;-><init>(Landroid/view/View;)V

    sput-object v3, Lcom/networkbench/agent/impl/data/a/h;->i:Lcom/networkbench/agent/impl/data/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "not getuniQueId"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->q()Lcom/networkbench/agent/impl/k/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/networkbench/agent/impl/data/a/h;->i(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    invoke-static {v1, v2, v3, p2}, Ld21;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->i:Lcom/networkbench/agent/impl/data/a/a;

    invoke-static {p0, p2, p1, p3, v1}, Lcom/networkbench/agent/impl/data/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/networkbench/agent/impl/data/a/a;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->c()V

    sget-object p0, Lcom/networkbench/agent/impl/data/a/h;->i:Lcom/networkbench/agent/impl/data/a/a;

    invoke-static {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/PageFloatingBtn;->setActionFeatures(Lcom/networkbench/agent/impl/data/a/a;)V

    sget-object p0, Lcom/networkbench/agent/impl/data/a/h;->l:Lcom/networkbench/agent/impl/asyncaction/a;

    if-nez p0, :cond_2

    sget-object p0, Lcom/networkbench/agent/impl/data/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "traceMetrics instanceof TraceMetrics is false, skip"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Lcom/networkbench/agent/impl/data/a/g;

    sget-object p2, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    sget-object p3, Lcom/networkbench/agent/impl/data/a/h;->b:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/networkbench/agent/impl/data/a/g;-><init>(Lcom/networkbench/agent/impl/asyncaction/s;Ljava/lang/String;Lcom/networkbench/agent/impl/asyncaction/r;Lcom/networkbench/agent/impl/k/b;)V

    sput-object p1, Lcom/networkbench/agent/impl/data/a/h;->j:Lcom/networkbench/agent/impl/data/a/g;

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/data/type/SlowStartState$ListenerActionType;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p2, :cond_2

    .line 184
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "on"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1, p1}, Lcom/networkbench/agent/impl/harvest/Harvest;->addActionAndInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->q()Lcom/networkbench/agent/impl/k/b;

    move-result-object p2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/networkbench/agent/impl/data/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/networkbench/agent/impl/data/a/a;)V

    .line 189
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/h;->c()V

    .line 190
    sget-object p0, Lcom/networkbench/agent/impl/data/a/h;->l:Lcom/networkbench/agent/impl/asyncaction/a;

    if-nez p0, :cond_1

    .line 191
    sget-object p0, Lcom/networkbench/agent/impl/data/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "traceMetrics instanceof TraceMetrics is false, skip"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    .line 192
    :cond_1
    new-instance p1, Lcom/networkbench/agent/impl/data/a/g;

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->b:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/networkbench/agent/impl/data/a/g;-><init>(Lcom/networkbench/agent/impl/asyncaction/s;Ljava/lang/String;Lcom/networkbench/agent/impl/asyncaction/r;Lcom/networkbench/agent/impl/k/b;)V

    sput-object p1, Lcom/networkbench/agent/impl/data/a/h;->j:Lcom/networkbench/agent/impl/data/a/g;

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 193
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 199
    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->m:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/networkbench/agent/impl/data/a/a;)V
    .locals 0

    .line 194
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p4

    invoke-virtual {p4}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 195
    :cond_0
    new-instance p4, Lcom/networkbench/agent/impl/data/d/d;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/networkbench/agent/impl/data/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/networkbench/agent/impl/data/d/b;->a(Lcom/networkbench/agent/impl/data/d/d;)V

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "NBSEventActionManager createNewFeaturesData featuresData :"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->i:Lcom/networkbench/agent/impl/data/a/a;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 60
    const-string v1, "#"

    .line 61
    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.Fragment"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    :try_start_1
    const-string v3, "android.support.v4.app.Fragment"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v3, v1

    :goto_1
    :try_start_2
    const-class v1, Landroidx/fragment/app/Fragment;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    if-nez v3, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    return v0

    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_3
    :cond_5
    return v0
.end method

.method public static c(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 95
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->h(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->h(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->h(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->h(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 97
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_3
    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", result:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_4
    const-string p0, "getUniqueId view is null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()V
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->b()Lcom/networkbench/agent/impl/asyncaction/r;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->b:Lcom/networkbench/agent/impl/asyncaction/r;

    new-instance v1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    sget-object v1, Lcom/networkbench/agent/impl/data/type/r;->p:Lcom/networkbench/agent/impl/data/type/r;

    iput-object v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->shouldPushPop:Z

    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/a;

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/d/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/networkbench/agent/impl/asyncaction/a;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;Ljava/lang/String;)V

    sput-object v1, Lcom/networkbench/agent/impl/data/a/h;->l:Lcom/networkbench/agent/impl/asyncaction/a;

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->b:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/asyncaction/e;)V

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->b:Lcom/networkbench/agent/impl/asyncaction/r;

    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->i:Lcom/networkbench/agent/impl/data/a/a;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/data/a/a;)V

    const-string v0, "NBSEventActionManager configStartEngine"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v0, 0xcccccce

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static d()V
    .locals 0

    .line 41
    invoke-static {}, Lcom/networkbench/agent/impl/data/a/e;->a()V

    return-void
.end method

.method private static e(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/data/a/h;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 131
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static e()V
    .locals 4

    const-string v0, "onUserActionEnd!!!!!!!!!!!!!!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->u(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->b:Lcom/networkbench/agent/impl/asyncaction/r;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->l:Lcom/networkbench/agent/impl/asyncaction/a;

    if-nez v1, :cond_2

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "actionTraceMetrics==null"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/asyncaction/e;J)V

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->l:Lcom/networkbench/agent/impl/asyncaction/a;

    if-nez v0, :cond_3

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "traceMetrics instanceof TraceMetrics is false, skip"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->j:Lcom/networkbench/agent/impl/data/a/g;

    if-nez v1, :cond_4

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "nbsEventAction is null, skip"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v2, Lcom/networkbench/agent/impl/data/a/h;->i:Lcom/networkbench/agent/impl/data/a/a;

    const-string v3, ""

    if-nez v2, :cond_5

    move-object v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/a/a;->h()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/networkbench/agent/impl/data/a/g;->a(Lcom/networkbench/agent/impl/asyncaction/s;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->j:Lcom/networkbench/agent/impl/data/a/g;

    iget-object v0, v0, Lcom/networkbench/agent/impl/data/a/g;->e:Ljava/util/Map;

    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NBSEventActionManager"

    if-nez v0, :cond_6

    const-string v0, "onUserActionEnd store event action"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    sget-object v1, Lcom/networkbench/agent/impl/data/a/h;->j:Lcom/networkbench/agent/impl/data/a/g;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/a/b;->a(Lcom/networkbench/agent/impl/asyncaction/a/a;)V

    goto :goto_2

    :cond_6
    const-string v0, "maybe two event action nest\uff0cdrop top event action"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->b:Lcom/networkbench/agent/impl/asyncaction/r;

    sput-object v3, Lcom/networkbench/agent/impl/data/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/networkbench/agent/impl/data/a/h;->i:Lcom/networkbench/agent/impl/data/a/a;

    return-void
.end method

.method private static f(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    sget-object p0, Lcom/networkbench/agent/impl/data/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "view getViewEntryNameOrID not find"

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static g(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/h;->h(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/q;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->getRow(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getAvaliableView container row tag:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->getRow(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", column tag:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSActionInstrumentation;->getColumn(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NBSEventActionManager"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static h(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v0, Lcom/networkbench/R$string;->view_attached_id:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static i(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
