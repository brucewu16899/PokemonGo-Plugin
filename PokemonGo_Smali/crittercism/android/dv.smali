.class public final Lcrittercism/android/dv;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.crittercism."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".usermetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/dv;->a:Landroid/content/SharedPreferences;

    .line 30
    iget-object v0, p0, Lcrittercism/android/dv;->a:Landroid/content/SharedPreferences;

    const-string v1, "data"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    :try_start_2e
    const-string v1, "username"

    const-string v2, "anonymous"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p0, v0}, Lcrittercism/android/dv;->a(Lorg/json/JSONObject;)V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_38} :catch_39

    .line 41
    :cond_38
    :goto_38
    return-void

    :catch_39
    move-exception v0

    goto :goto_38
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 106
    iget-object v0, p0, Lcrittercism/android/dv;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    const-string v1, "data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcrittercism/android/dv;->a:Landroid/content/SharedPreferences;

    const-string v1, "data"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_f} :catch_10

    .line 121
    :goto_f
    return-object v0

    .line 118
    :catch_10
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_f
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 51
    invoke-virtual {p0}, Lcrittercism/android/dv;->a()Lorg/json/JSONObject;

    move-result-object v5

    .line 53
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_19

    .line 54
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 55
    invoke-direct {p0, p1}, Lcrittercism/android/dv;->b(Lorg/json/JSONObject;)V

    .line 56
    invoke-virtual {p0, v3}, Lcrittercism/android/dv;->a(Z)V

    .line 103
    :cond_18
    :goto_18
    return-void

    .line 63
    :cond_19
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    .line 66
    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 67
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 69
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 70
    if-nez v8, :cond_55

    move v4, v3

    .line 73
    :goto_35
    if-eqz v8, :cond_4e

    .line 74
    instance-of v4, v7, Lorg/json/JSONObject;

    if-nez v4, :cond_3f

    instance-of v4, v7, Lorg/json/JSONArray;

    if-eqz v4, :cond_59

    .line 80
    :cond_3f
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    move v4, v3

    .line 89
    :cond_4e
    :goto_4e
    if-eqz v4, :cond_1e

    .line 91
    :try_start_50
    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_53} :catch_6c

    move v1, v3

    .line 95
    goto :goto_1e

    :cond_55
    move v4, v2

    .line 70
    goto :goto_35

    :cond_57
    move v4, v2

    .line 82
    goto :goto_4e

    .line 84
    :cond_59
    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    move v4, v3

    goto :goto_4e

    :cond_61
    move v4, v2

    goto :goto_4e

    .line 99
    :cond_63
    if-eqz v1, :cond_18

    .line 100
    invoke-direct {p0, v5}, Lcrittercism/android/dv;->b(Lorg/json/JSONObject;)V

    .line 101
    invoke-virtual {p0, v3}, Lcrittercism/android/dv;->a(Z)V

    goto :goto_18

    :catch_6c
    move-exception v0

    goto :goto_1e
.end method

.method public final a(Z)V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcrittercism/android/dv;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method

.method public final b()Z
    .registers 4

    .prologue
    .line 129
    iget-object v0, p0, Lcrittercism/android/dv;->a:Landroid/content/SharedPreferences;

    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method