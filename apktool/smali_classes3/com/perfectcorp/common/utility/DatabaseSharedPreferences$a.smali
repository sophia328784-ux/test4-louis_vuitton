.class final Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:J

.field private synthetic d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;ZLjava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->a:Z

    iput-object p3, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->b:Ljava/util/Map;

    iput-wide p4, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->c:J

    return-void
.end method

.method private a()Ljava/lang/Boolean;
    .locals 9

    const-string v0, "DatabaseSharedPreferences"

    iget-object v1, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    iget-object v1, v1, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-boolean v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    iget-object v2, v2, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v4, "KeyValuePair"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    const-string v5, "clear"

    invoke-static {v0, v5, v4}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    :catchall_2
    move-exception v2

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    iget-object v5, v5, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->g:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->j:Ljava/lang/Object;

    if-ne v4, v7, :cond_2

    invoke-virtual {v5, v6}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->m(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1

    :cond_2
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_3

    check-cast v4, Ljava/lang/String;

    const-string v7, "String"

    invoke-virtual {v5, v6, v4, v7}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1

    :cond_3
    instance-of v7, v4, Ljava/util/Set;

    if-eqz v7, :cond_4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    sget-object v8, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v7, v4, v8}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->l(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Set<String>"

    invoke-virtual {v5, v6, v4, v7}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_4
    instance-of v7, v4, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "int"

    invoke-virtual {v5, v6, v4, v7}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_5
    instance-of v7, v4, Ljava/lang/Long;

    if-eqz v7, :cond_6

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v7, "long"

    invoke-virtual {v5, v6, v4, v7}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_6
    instance-of v7, v4, Ljava/lang/Float;

    if-eqz v7, :cond_7

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    const-string v7, "float"

    invoke-virtual {v5, v6, v4, v7}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_7
    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_8

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    const-string v7, "boolean"

    invoke-virtual {v5, v6, v4, v7}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_9
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->b()V

    return-object v0

    :goto_4
    :try_start_5
    const-string v3, "CommitCallable#call()"

    invoke-static {v0, v3, v2}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->b()V

    throw v0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    iget-object v0, v0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-wide v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->c:J

    iget-object v2, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    iget-wide v3, v2, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->d:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->d:Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;

    iget-object p0, p0, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/common/utility/DatabaseSharedPreferences$a;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
