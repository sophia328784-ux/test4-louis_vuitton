.class public Lcom/networkbench/agent/impl/util/am;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Object; = null

.field private static b:Ljava/lang/reflect/Field; = null

.field private static c:Ljava/lang/Class; = null

.field private static d:Ljava/lang/Class; = null

.field private static e:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/reflect/Method; = null

.field private static g:Z = false

.field private static h:Z = false

.field private static i:Z = false

.field private static final j:Ljava/lang/String; = "/MainWindow"

.field private static final k:Ljava/lang/String; = "/DialogWindow"

.field private static final l:Ljava/lang/String; = "/PopupWindow"

.field private static final m:Ljava/lang/String; = "/CustomWindow"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 131
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/am;->a()V

    .line 132
    invoke-static {}, Lcom/networkbench/agent/impl/util/am;->c()[Landroid/view/View;

    move-result-object v1

    .line 133
    :try_start_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 134
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lcom/networkbench/agent/impl/util/am;->d:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    .line 135
    invoke-static {v5, p0}, Lcom/networkbench/agent/impl/util/am;->a(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    :cond_2
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    .line 137
    aget-object v4, v1, v3

    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/networkbench/agent/impl/util/am;->d:Ljava/lang/Class;

    if-eq v5, v6, :cond_3

    .line 139
    invoke-static {v4, p0}, Lcom/networkbench/agent/impl/util/am;->a(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    return-object v0
.end method

.method private static a(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 125
    invoke-static {p1}, Lcom/networkbench/agent/impl/util/al;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/al;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "android.support.v7.widget.Toolbar"

    const-string v1, "android.widget.Toolbar"

    const-string v2, "androidx.appcompat.widget.Toolbar"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "mNavButtonView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/networkbench/agent/impl/util/ac;->a([Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_0

    return-object p0

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/am;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-object p0

    .line 128
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 129
    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 130
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/networkbench/agent/impl/util/am;->a(Landroid/view/View;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 147
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/am;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 148
    const-string p1, "getCurrentTabView"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/networkbench/agent/impl/util/ac;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 149
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 150
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/util/am;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/view/View;
    .locals 6

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 141
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/am;->a()V

    .line 142
    invoke-static {}, Lcom/networkbench/agent/impl/util/am;->c()[Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    .line 143
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 144
    aget-object v3, v0, v2

    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/networkbench/agent/impl/util/am;->d:Ljava/lang/Class;

    if-eq v4, v5, :cond_1

    .line 146
    invoke-static {v3, p0}, Lcom/networkbench/agent/impl/util/am;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public static a()V
    .locals 5

    sget-boolean v0, Lcom/networkbench/agent/impl/util/am;->g:Z

    if-nez v0, :cond_2

    const-string v0, "android.view.WindowManagerGlobal"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sDefaultWindowManager"

    const-string v4, "mViews"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/networkbench/agent/impl/util/am;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v3, Lcom/networkbench/agent/impl/util/am;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v3, Lcom/networkbench/agent/impl/util/am;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/ArrayList;

    if-ne v3, v4, :cond_0

    sput-boolean v2, Lcom/networkbench/agent/impl/util/am;->h:Z

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/networkbench/agent/impl/util/am;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, [Landroid/view/View;

    if-ne v3, v4, :cond_1

    sput-boolean v2, Lcom/networkbench/agent/impl/util/am;->i:Z

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/am;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v0, "com.android.internal.view.menu.ListMenuItemView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/am;->e:Ljava/lang/Class;

    const-string v0, "com.android.internal.view.menu.MenuView$ItemView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getItemData"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/am;->f:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v0, "com.android.internal.policy.PhoneWindow$DecorView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/am;->c:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    :try_start_3
    const-string v0, "com.android.internal.policy.DecorView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/am;->c:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :goto_1
    :try_start_4
    const-string v0, "android.widget.PopupWindow$PopupDecorView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/util/am;->d:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-boolean v2, Lcom/networkbench/agent/impl/util/am;->g:Z

    :cond_2
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 2

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 153
    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 1

    .line 122
    sget-boolean v0, Lcom/networkbench/agent/impl/util/am;->g:Z

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/networkbench/agent/impl/util/am;->a()V

    .line 124
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/util/am;->c:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/networkbench/agent/impl/util/am;->d:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a([Landroid/view/View;)[Landroid/view/View;
    .locals 4

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 118
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/View;

    .line 121
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "/MainWindow"

    return-object v0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/am;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/DialogWindow"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/PopupWindow"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Landroid/view/View;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/util/am;->e:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 88
    sget-object v0, Lcom/networkbench/agent/impl/util/am;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/al;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/al;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/al;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    .line 90
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/al;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static c()[Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/View;

    sget-object v2, Lcom/networkbench/agent/impl/util/am;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->f()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :cond_0
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    aput-object v3, v1, v0

    :cond_1
    return-object v1

    :cond_2
    :try_start_0
    sget-boolean v0, Lcom/networkbench/agent/impl/util/am;->h:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/networkbench/agent/impl/util/am;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/view/View;

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/networkbench/agent/impl/util/am;->i:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/networkbench/agent/impl/util/am;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    move-object v1, v3

    :catch_0
    :cond_5
    invoke-static {v1}, Lcom/networkbench/agent/impl/util/am;->a([Landroid/view/View;)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static d(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getCurrentTabTag"

    invoke-static {p0, v1, v0}, Lcom/networkbench/agent/impl/util/ac;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Landroid/view/View;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "/CustomWindow"

    const-string v2, "/PopupWindow"

    const-string v3, "/DialogWindow"

    if-eqz v0, :cond_3

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const-string p0, "/MainWindow"

    return-object p0

    :cond_0
    const/16 v4, 0x63

    if-ge v0, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/networkbench/agent/impl/util/am;->c:Ljava/lang/Class;

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    const/16 v4, 0x7cf

    if-ge v0, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/networkbench/agent/impl/util/am;->d:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    return-object v2

    :cond_2
    const/16 v4, 0xbb7

    if-ge v0, v4, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lcom/networkbench/agent/impl/util/am;->c:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    return-object v3

    :cond_4
    sget-object v0, Lcom/networkbench/agent/impl/util/am;->d:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    return-object v2

    :cond_5
    return-object v1
.end method
