.class final Lcom/google/android/gms/internal/zzip$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzip;->zza(Lcom/google/android/gms/internal/zziq;Lcom/google/android/gms/internal/zzip$zza;)Lcom/google/android/gms/internal/zziq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzJB:Lcom/google/android/gms/internal/zzin;

.field final synthetic zzJC:Lcom/google/android/gms/internal/zzip$zza;

.field final synthetic zzJD:Lcom/google/android/gms/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzin;Lcom/google/android/gms/internal/zzip$zza;Lcom/google/android/gms/internal/zziq;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzip$1;->zzJB:Lcom/google/android/gms/internal/zzin;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzip$1;->zzJC:Lcom/google/android/gms/internal/zzip$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzip$1;->zzJD:Lcom/google/android/gms/internal/zziq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$1;->zzJB:Lcom/google/android/gms/internal/zzin;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzip$1;->zzJC:Lcom/google/android/gms/internal/zzip$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzip$1;->zzJD:Lcom/google/android/gms/internal/zziq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziq;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzip$zza;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzin;->zzf(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_11} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzip$1;->zzJB:Lcom/google/android/gms/internal/zzin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzin;->cancel(Z)Z

    goto :goto_11

    :catch_1a
    move-exception v0

    goto :goto_13

    :catch_1c
    move-exception v0

    goto :goto_13
.end method
