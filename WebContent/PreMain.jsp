
<!Doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
              
		<!-- javascript; jquery사용 -->
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

		 <!-- Google Font -->
        	<link rel="preconnect" href="https://fonts.googleapis.com">
			<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
			<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
			
		
        <title>코꾼의 게임뉴스</title>

        <!-- style -->
        <style type ="text/css">
        
        *{
         font-family: 'Gowun Batang', serif;
         }
         
        header {
                  background-image: url('https://cdn.pixabay.com/photo/2016/10/20/18/35/earth-1756274_1280.jpg');
                  padding: 30px;
                  text-align: center;
                  font-size: 35px;
                  color: white;
                }
        nav{
                  height : 50px;
                  background-image: url('https://cdn.pixabay.com/photo/2016/10/20/18/35/earth-1756274_1280.jpg');
                }

        body{
        		background-color:black;
        		}    
            
            .card-deck{
                margin:auto;
                width: 900px;
                height: auto;
                display:flex;
                
            }
            
            .card{
              width: 33%;
              float: left;
              background-color:black;
              color:white;
              border-color: white;
              
            }
            
            .leadd{
              float:right;
            }
            
            .jumbotron{
            	color:white;
                margin: auto;
                width: 900px;
                border-radius: 10px;
                background-image: url('https://cdn.pixabay.com/photo/2016/09/08/20/52/stars-1655504__480.jpg');

            }
            
            
            
            .space{
                width: 1000px;
                height: 100px;
            }
       footer{
                color:white;
                text-align:center;
                margin-bottom: 30px;
            }
        </style>

        <!-- javascript -->
        <script>
		
    
           function Login_Plz(){         
					alert("로그인 해주세요!");
					var offset = $('#jumbo').offset();
                    $('html').animate({scrollTop:offset.top}, 500);

            };
		
            $('#heading').click(function(){
            	location.reload();
            })
            	
            		
            
            
        </script>


    </head>

    <body>
    
      <header>
        <h1 id="heading"><a href="PreMain.jsp" style="color:white">코드:꾼스트 게임뉴스</a></h2>
      </header>
      
      <nav>
		
      </nav>
        <hr>
        <br>
        <div class="card-deck">
           
           <div class="card">
              <img class="card-img-top" onclick="Login_Plz()" style="cursor:pointer" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhYZGRgaGhwcHRwcHR4eHx4aHiMcHBweHyEjIy4lHh4rHx4fJjonKy8xNTU1HCU7QDszPy40NTEBDAwMEA8QHxISHzQrJSs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAKgBLAMBIgACEQEDEQH/xAAaAAADAAMBAAAAAAAAAAAAAAADBAUBAgYA/8QAQBAAAQMCBAQEBQIGAQIEBwAAAQIRIQAxAwQSQVFhcYEFIpGhMkKxwfAT0QYUUmLh8YIVciNzkrIWJCUzNFPC/8QAGAEAAwEBAAAAAAAAAAAAAAAAAQIDAAT/xAAgEQADAQACAwEBAQEAAAAAAAAAAQIREiEDMUFRYRMi/9oADAMBAAIRAxEAPwBjGB0Ev8BS5D6tKwx9CwY9zRNHkB+YeUu0FiPZLg9u5VZVwdZYq+INcxEWAYdzvFbnDBIDBtIswBfcAQR05V16cxtgYKX0vLuAIbdofjytTX6ZURfV6gji+zEXHvtrncUgloCgl+oi9mi03NbBbJZvij+0CIGwJvIpl2hKYVGCQhklhDkgllWAvY8fS1KLUnVpUNK7aobY+Zy3pVLLKQl2lrSGPIHYTI+lJZzCBYO5AEnccD0ievKmQNFcwsglKxpEs8hgNuv7PWpQdAcXJl5DBtVrM56U2nDSB0GowAJ+a3xXAHSgPOpdnEQWBZ5HH71gpgULL2Cgwgw0F+7u3atkhwHTcEOBYkO3KQd7txNa4+EEgpBl9rgD/R9KZE6k3IAIvzcfUzvS59DosjLlC9aFeYEEBTuLmOTgcIeqX668VIKwApIk8XvLSRvU9eCVpIKWBKgC4t5W/P3rbN5r9NCUJfyh3aQSSTw1by+z0yWgbD5taVqSJZ0dd5IJf1pNGaQlS2YAOSSbqJDBJ2TO/GhJzRUQEqBH9KtTzO88LfegIyoYgOkagopZwwHwyBx4GszJDisRkMW806X2cFhZgwEgfLvQhmm1KJZZSVOPleEtwk/SZlXzLWVwdMAFi6hIvYOWjYUIaw+nzrJckwl/v7CsEaxFKhKS5Q7j+4m7l4DNeZonhqDrKmLPxZjeWbnyoWRxvM61a32YBIMO3fe0VVQptRSbvYi7b+r/AL0yXQrAYYKZYJeZgcLm5E2vRsDGKQVcQSS5YBrh/SAN+EgyxR8StLA83fe972NFVjuklAKgDuyWMswA4fSjgBNYWtYNx0cMN24OfrT6sYfqaUuNA1ONiBt0HDcmlxmlJBKgPhMDbb3Jb1pdKmHmX5lOSeUG1nJh+FBrTIp4uLrkM5ZaksIBNy/e1Bw8RCvNpgki5Zy+nbgTPKtkEOL/AA8yJYgHcTv2qVgLDFIMEQLKJBcO28M3A0EglRWgsCNIJZwoMCX/ALbQzM4e1a5dKDKElXm2uD8wYgWPs9J4mLqQQPnAUIEqS2ocyRxO9Dws8xStRdKoU6WOoQ+5kbzvR7NhQVjrEJYBtRggyIUXvZzvFqF/MlSSCZ3cB92+ItY3FIZ7NB99XHldwRsb/wDIih5cBRdS9IswBJbZtgKyn6Yqha3fSSIMgklrsE2V+CgmRII5EEHU8EFp59K2y6ESUrdxLlpO4Zg/7UfESoC7ksBBMPzUeLvyFBoKAvHDzGZGzOwgelFXlnS4CeoBH0a9AxUqADpmd93H52o6BoIJLmLj0nYsW7cqTf0IFOGp9IBkbkDq07R0rTEUElil+JdpHrZmajZnGcDVd3AYiJ2gd+XKtcQvvIgEidIJs3zfm1bDCaCEyxJ5kcttvrD0RayFukyRAY3IAUFcR9/fXDwy/Bg5NnFx0Bf8NM4jGQJQUs0OBciJt3oMKBY+KnQznyqjl8pMTpES9jtSGbQsqcKAebmS5c33M01msLUEsT8xD+X5WkNG3rzpL9IsJBjcORxD9XrBLmGS+oBQ1XZ0jgPKTcz8KqZQgAEvqAJLkwNmte9nt3KOSSqVGWAJcu0w786dwVJAKDuXY2fYby+9DANhMZLwGMMxj/N/Y1jCxQFAkG2mNmDAB4BcxXtJF4ixhh15m1ag3YH6En/X0oroRtMKFgnSEglpDnkW9ZdtqwMyCogIMXMuzQZkyBezilxheX3VO0uwubEdzWUocaB8sjobvx2jnTLsWngYpYMEFRBhjcmLmSHFuVLpUXECbsbySY2JKvemk4gSQoCE7X5D3P1pVeEy3d9JYhpZz7yazQisWWt4kgpNuWoerzW6MMgqZxqL8xpPPv1ouIkatSRHyuQzEv8A+oc+FCXh63ENENZ2NjaRtxtWQ/NA8XET8KCEqLuC6TfzB/Q8+dLnGUgkalbhiBxaCzlplqxmUFMENBcpOpN2sY4evagJxHYfEluhEyRZhvwpsYVQT+YVcpQwlyrYNZ4UHHOvfrILErcncKN+FnHYcayQbpQDFyC7WmYLmb3rTDxWEhCd5CpeBtBajxY2hsyBGibMBH/IR02vQsRAA02DEq6DZvywrTGzjCCJefNLNykVgrdO4Eg8m2tfeeVDAmmTzRALAAQ/IubeoEcqayuZOrSpi7M0Nv3/ACaTUlIZrDuxaTwfns1EyWGSu8PDNtw42vRwGjqVM6ghJe7kHfh14Vvg4jG6WHAv7P0oCcrquHYG7kxuG+1ZxwlIIANgGkRtvTJAYxiY40ku/wCyS46bCKURia3StI4ggfD/AKgUFa9i4uw58T6UFAOqI9afiKWBiKSkIhiB5hcaSW3YgfSpOYUUr1Ncu3MXZ+fsRT2FiKI0G9x1/dooOMmGNz+dqylm5IwrE0l0jTOsQJe49f8A20nim7BkkwL+/f3ppWXUE6m8vHYcQOlDCIvxIrKQchYy0M35NEy6moow3FpH0rKcAkEuIE85Aj1+tNwNyGjiEhigL42d9jckiioUDYlgbH2gzx3NByuU1Fki/OqiPDyCAVg2BfYbh9qDhJm5CmMo6vKJSALkF21FoBJfnwrZGIPhuUggguH5ElrdOFYXKiTLu1i7z1E7y1boSXAbymLtBgOb9nFTqNQyo1ViQ0pZ4i4aDwma2w1At5t9w+4t257UdGQYeaQsPO5Lz7+1YThtJDy5Ahpj7+p41Fr8G5IAtFousbwWZwA1tv8AiRWgUCRJQqFuOAB72mNqJjIksXAYh+o59KwoEB0mCL2DfNxdo/IoJBNcTESmQzP5hGnqHb9x60j+stPwgKBl2flx5UdYBS3wgtMNxLOHSRyu9I4kFp/4s30otDI6fDSP09OnSk7F3LB3L3BbnAFaoQpmd4Y8OH396ypamQ7DzHcXBaS39tvwEy2JpCZFjHCQwfjSJi0tNjhEm7tf/Pv61qUswF7Ox5+l6IhY0uYkRwaATy50JC0uCSGc2O2/Sm1k+K0ycNIDqmOLxe35atVKGosILlztxcez1sjD1EieXPnR04YTa/Hl+1GWxaxAVApD3EvAP+6WxFsQZPWQJt0l6dElmZ+BbuR+X2pdSXUIjq12domapKRJqRbEzUMBG44n8asDGSxdiwcFi73bsONb6QHgQ7R14BhWi0EqYFyAO/51qilGxCn65LuIVDHcCQ/behK0MSwS4ZhsBJn83pvEyaykqSNtmYP78aQOWu6g4YMd9o5b9qeUgzjMDGa3Q/Ygc6GtepQ34vtW/wDKlizv+e1bowFMxE8GM73/AG50zlFFWABikvpAnfS1ufP7Ub9ApIClIUCkHykqZ5YmfMO9ajB2LsbWZ+dF/l2G3W8T1fpSuEHkaZhASlPNYDqsUgAm08q28NCklagGSUEiew+ta4mrzI+IE+Vn5gdLVrj4mkhHzJceluz0jSGx4MJIe4mLtWRiB5S5BsTzpL+aKwkQwPcG3Qmml5xA0pQk+ZWkk7dO5FOsEaZ5a0n5R9+3+qwkh/KOxrZYhiPy32prLZUBip/x9+HrTt4Kb+GZfzLdgNCuZdh78qpeH5RK8NaiWEgFrmfSWpLBxE6kHSdN1O+xFudqbV4iNCCyQCsgjdvzfnUbdfCkSn2xDxBGlCAGLBTi5kvUxJBaC/tTWZX5D5Q5IbaCTSCbh4+nCmXQMH0YBZwlwBLD17c61TlWLelOeF5haG0/NBEFwauZfKpWQSzCLU1Xx7ZN7uCPhvh40E6mJZr9/tXszkyklQ2FxFdQrLgJZKRAqTmcIuSzP3n7Vzz5nVBuHHZzq8FQAU0cxWUIabtueXCq+OhZAH9NhtSP8qQdCifngcYHpVFQqtUh9WKlIBUJgTs8feklrcJcbAe7Od9vegZzWFLDQokhzsOG4isJTqSpVjxFnYPvvULWFYX6ZzCAUkExxG9mPHa230UI0guYsfSfx2am8VRIf4iHB92tcyR2qdmQoEuQSAHEfCQCDztt/SaE+ijfYrmUqbyyG77Dr+GgrEy79T9orVeY84DMDfjAc9wJouFgatTmUq024NWbHQ7gLcnWkkEB/NLAuQDxts0EBnp7DxitIJSEApcOZazjyuPR4qbk0swvOlpZIJMltyQG3YPtTWAh1Bg6gAHfSEpTqAc8792vSmY2CSYVDQQdncv2+tHwEBVwLDvv9KVWoC02hthNv9VumAASw1PPBmNnv9utFE2tHRhAWJiDO/CtSFJs7ncikhmWLSDxbr2pgZlRkJJD7PPpeqpE6gIrWzvtzfntyrQpUqC0bPNNZfOrS50O4Z1D96yjFLaRA3hv9bcK24Sc4JfoqNlMASXAL9D+cKAvKKMg23a/vFWMVBDO20vZ60xQdBUSDvR54FS38JH6ikeVzpNzxH7PQlLa4YMwFoeAzR350bEStYdo6ND1qrDcaSWIBI+rPTc0VmPgPBWFEfHL7OYd96LiBLWUX57CXEn8el8zhFCAouFRu1+HDf0pMGSVKW93BDHpyAoq9C/FjC4y0IDgK1C4aG9Pes5bMobzLLlhxl/SHNTc7ig/Dqdt+29KoUEkEp3eXfp60eYeBeRiJCipJZQLjeQDLE3k0JeEkFC1kK1Avc29uBpH/qD4hUQFCLgy3Fqc/mv1D5vKhyUpHyu59+dJy3sdrFhPCANSjCRpLi8vv6+lBKgSliSAQZHR/p70bF0tB8uwJ/OfrQlpACSLl44fvWdGS0oozpDAKcGPwGn8HxJJSAyQQzm0S9+H3rm1jSCI4kvWcDNaCGCS+x3eg7NwR1WNjoC8NjDF2uJk9INGOZQFMGbSDvHAHn61zCM5JJAGol2iAwYdvvWmLiAqd42tQVf0bP4XsZSVpSkmABO4Zy3u1AyuCCUuCUb6bk3qahOqAR8MNsKq+Hr0J0lmMyRJYRVUyL6KGYUE6dI0kOBuzP71S8OzToBJLuSalApctoYiQWJ6350xkcujzDWlLvETAs/OtS2exX36L6s2WBB7GtV5tWlizHfeKjFBEvuPmFt240XMLQCRJhhswvv39K53Mr0Bqq9s0XmkuSCePIS1u9YGKSpKiWdw5YS4j85UkvSSSIAAYcTwvzea3RhFbOFHSzAXhwJPygvPYcm5BXilGMxinV8XvZq0WWBDzB6j8J3+1b/paZUli4izDl0DjvXs5gySlvMlhIPLfdxQrsecXQljYirpu0b7/WlNatXmOpI+JtwXf2eadXl1KKgIkxEDe5gOCPx6wtCQEu6SBIe/lUmQSzST0HSlp4uh12S8XLhC/NDGE3JA2nZSVb86dwcJTQALO53AANyC8TF3pbOI1YmpeoiyWGoNDM5i9po38s8hCwP+9n7N27UBg2VQD5ncgsgAuCXZSieAEcA9r0fAICXU2lyQBDn7Hle9Cy6xDDUAUuscnLAGyQzOwl4EqpRfnMlSgI0ptuzkDkHYb3oGZbCEkAuZ4jvHeiEInTMAegvz3pJClKACgQ0AEsw7341uoNYSG3an+E87DqHPYlucjnLF61w06ZuGVGzhmDTvQ1sTEJhy873F2j8itFghQQl2G17x7nd6CYcC5YJUTOniSRfh1o5x/lBuwcyOp3pcYbxDcmvaRyYz0o+FglIgMTY3/JbfjTcgODJSUrZWICncB+fpXsNSnIQAoMAC5a9LIyawZS7uzi/Rqo5bLKQ2oDZtOzxw2FLVJex4n8GMtlVancFobYb+s1pnMoytT7SD16RVQeUXJgM/5zqd4stvMNx+fSuV+Rci6h4JL8xBBI0pLgKeWMsNuR4VzXiuIr9Ug4ih5QwJLbuWEP2qvkV6sQq4hUPyO3pSXimGhWIonZKL8C/+JqqpLBMbIGOspUAp0kBi0Bu1667O5xGUw0lKHkJOlgpSpdSlGe2z965nEUzjTAcuQC/ferX8VygJ4Lf609VoEjX+JUAIC2ZRUASwcg7Ei5dpPCpvgOMs4yGJS5khxAksf+1Jqv8Axat8IBvnRbpUf+HEkLWSC6UEgbByE/Qn0NBV0Frs63xVajhLSksrSWKYIPI3FcNmcVBIZJfS5ckzXVeH5rWrFBL6TpaIGkHrcKrh8UaVrTwKkjo8e1BPDPsr+BacfHShSBpSFKaZAsDvcj3rp8LxNP8AMfy2iyNUBIQzOwTZm5Vy/wDB3/5PXDV9U1Wwx/8AUj/5f/8AJoU9GSJvi4ThZwJQ6QShQCSwBUWI5CLc+FW/4kBCNQKhoUFOksZiG4PUXx1X/wA2kaQ74c9zXU55GvBxUMPMCOnMcNqHI2CnimOoqQjzNqU4SrSSwLBRhw7Fiazg4JKQP016g7Dy8rh6F4mopxEF2crY9rdaaTjuQEqeTvcj69KrFNeiN+yajNo1lkG4DHhva7tTX6obyh1EkkMGZrjp+1eHhvzoAPE/3PYd96fy3hhdIxCgAl+BDNaOFdHJZ7JtNfAOUdZ0pYpCW1ANzbmX2omJlFsdMsWLNw/BVbLYKQopRAdy1iZnlIrbMZUDUl2sxAa03aTeo1XYEcyvBPDykuPvPtTKSw0gNYng7OH+lGxUEFk2D7web7lvrWn8sVylJLaSDYO3mLmBDhqVsdIHiqJDvqIjclg7S8e+1YRiJUk+RzJb2SxBcRG16wcUpkKmRe43vxD1ri4wURISDtNx7EVkjMDhvpWd5LRckt1kipmLhlxrJsYEnjvT6Pj9CzNN477jiaYWli7dS7OZsevCiwoVSlblWkpB2JcixgAgAXd59aZK1bFuqQS+/wApbpHSgZhYsliYBOpJIYwEpALEHfj0FJ4mRUTOt/8AzT1/p50owdZWUkO406QlIYJsCQ5uwIh+fClErVAUoAPAOsXDbi7Pwvaz5xNYbyks3/21g2Lky/C5e/KmsFKydKiUJD/HpUGeSwLnnHvRCYw0qJuD3ILTy50+jDcMlQJaD8U2uWuxa9aYmAlPlTpIfZJGrbUwEDuQ3E20VmdKCU+bYlMzAbg1va9bRWhnGYEFnJsR2l78fryomHhAuQx4gvBZ2veKnIzJKNe6Zm7ux5g39XrBzACtevSCqzNt04+tbDHQZTCCgREAAEbeg4BqbRhp0klLAS+7i/vUjIYq0ljpZpLsHB2eCbVSXmUEEAvaBG9yeBFTrdHWYbpWYCQ5BDg7Q/7WoikLWSIDTxmlcrihCVKUos2288+smnFY6PjSpOzk2ApaWjSMLISPMrqwpDxJGpBA3s+/59qWzOMnECvOgJGwPvxoWYLJKE4ggOSLDlXP/m29K8lgt4bldGJpaWVL8UnZ3pbxPCfGU39CBHN3plGdw0nWpYGhJBUohIchhvc8KEvxDKrOtWKgqOm2KkWcD6mrJMVtMkfpAFYIOklu32pj+IVtwYrP0IrXM46FqWUKSUo+EhWtyzkvZnpxSMDMjz4gSX1NqSlQ3hwXG1OxEA/i1B/QBB+dHaKV/hLBKsPFUo3UlIJ20gqP/uFbfxV4jhrCcNCwo6tSgk6gkCA5s71t4bnMPAy0rRrZaygqAUSSQBp5pSmitwLFP4XzD4+Mb6nPdKmb0Jqd47ltOMvmx7M32NPeCZ5f66V4i2+IqJ0pQhJSR0G3UtW/jmIjEWDhqSsaWVoIUzGHbqa30Bp/CAAxXNglTkXYtzqnlw+fKnj9O/8AxNK+G5cYSguTBBizttyNVU5nA1LxNaNSo1FaQAPq9akZMn+LZfXm3DRonuapJxdOKkblKxM/0mOyaVwCMRa8QEBBUnSr4QUouqWZJm9b4+cwl4uGUKQrSTq0rSpgYdhLX5SKTBtNP4lW6EEQQon2+9RMHGOoTDmzdTwq7n14eMpCEYiCQpRISpJLM1gXM0bA8CQLKckafhsXfjwinl4JWFPwzxhAQnyM97Rd2bd2pLPZ1a1laXACSUE7KdnHOn0+C4aEg6ma52PAMOe1c5ns6VJKXJhgSJ0ufs0VZcfaJU36LGQ8SUlaQoukzB4AiRLWbjarGZUH1KcjgS6XIInmGNcknEKMNSQSdSgdJAENsNt55CrONn1nCcp0nStRtKmDN/6ooV21gFKabbC5dWpfllmnm/vvVUhCAxvuOP4K5XwbxEJE3DqfszTuz7y7VQxM0ViCATdgzQ7CbT7UHP0zbXSMeIgK2FmgAC4ZL+m1RVLUICS5ZgIkyIeKqrQGJiSTd+LDqYnlQEYIBUxbd3biHvEKPpRTSQUmZStDJUQxJSID+btu7i0G21AzOZSIdyQ/ruOH5xFaLwitCgNYA4hnDNCnkOb8Ax4ULEQUkKdc9dLxxk8n960rTMAQov5EngwO14BvH2oGLlWLHQDEaeX/AHVQzSgBq1qCS0C5O7fvzpfDy5UH0IbZwCSOLtMvw6VmMn0GyuRXcqcAj5QlneCxINgLEwLUxjrKSSkESHBcuDNkpYmQLtegrxwEadKwEllMpO8kqLE7tcNSRUNYSgLf/uflIAgc+dKYJmlkwtalORAGkWPMjdmptC/JDaRDOx5nrHvW6MFGti2r4jwAdon+0846mp2aX5SdQCQflEA8Q3q9HTDOCrUksDy9Y67etHy2VGskCT8QuBuT7EB6XyrhKdKS5tyJAJfheqSsNSEhRABAIT6+r83eTxrfAC+Pl9SgSSAJuBZ5BkqJa0fcFxMyAkCRskbl7vE7vO9CShSkjaBYiOHS9+dLYgI8qWYSSS/Nyz9h0rNBR7PeIrA+KLsPvXsPxdZSARqAliBNojak8fJqN9Ul1MDtAHWTWUYKnZi9yA4ZrJ6CPUb0vFMbtFhOaC0KOlKSL6f6efCpuJ4ikMAiBsSSO/KvJJKCRzfvUrWoEQAfb3vvRcoypjeJnwqNCGvI37mg5jA8msYYALkEAMwCj0HwLj+00tj4ZCmAJdmi5am04i9H6RUwPywY1ay+4831PEulSFMF4bhqUSP9TB+tEyeVCgsLCSEOS7cWg3B4U2tQSsMLhrtY8qVRiadaTZRS53LOoe5FJv4Pmi+LlU3QIIs08S9GynhZWkqQNRDApbi7AkxIB9K2wsQoVqFyHkbWqplc+ErDJAOIAhkb3A4uZ+nCq/OhVn01T/D5cElkFgHkkkU4nLpwiAhKXYgjy8iDJEtzpPxvxNDBKQYDs5+LakMHxRYwVszlQkhzI0n61s/QP+As14is2hioxz5707l0JWhKtCFLN4DjcmeVQ14g08SQ3SdqtZYaEghTKABEEs4NaXpnGh8xm2CUs7gWYhuHOl8TKamVpBWSwSAN2YPxmtVYqjZYJ4XNHxsjiYISsKBJOrjpUmQTRppGmHgr4evRjFGmSoAgps245vXaozCgW0l/6h0rgshjoWv/AMUspSn1AhIfdRi5M9SasYucR5wcZRSlLBI36EUZWolep9HS/rha0jUQ5ny3EsBts70zgeC4SV692bSw0t0rkPAPEwcQBRLA+V38vRuXuRXXYmZKoBZj2Aj70WvwnuPsZGWQpTkJLFwSJtB96znMNGIhSFJHBw7jcMWqfjYymYB2dvy1I4viyUEokLgSQDwff60OP0P+nwB4hl04GoI1EafiBdjJsR3rTLZlCkyqWbh5hIjqTztTC8VCklClDWUkQQSW4E7vXJoSVr0JDqexTRKTWnTDHQzTMg9vfpyoWd1aCpwNnMAkhwl7HpUrMZLEwZWHEBwokDrcCiZnxFRdIDh4OqQfXY/tQSHdJhMLGOlWsaWKQBweS7w/EcTasKQzqT8RlzYCG7/4rfCQpeogAggFmAMBmcTABH/L0fRlhpJSlgLapdwTa3AcY2pprPZNkVWEV4gaEwCpzxlz1qocV5cJTOkNdLli23TlWD5XCgDzVI4SBt7XvNBxRhqJUslZPzSH7CB0oPsKBYkKKtUrTsDMatJBaxjoRSiMwELdLApUfMS9iCH2LiH6UTFMoYB0JSS2xZPFmgdn70qnBU5IZ78L+/w+1AYexcwyyHJALvuUmxvdyd96FhYetnBLuzNGziJtvufTwTqUym8qbnrBNnDN1aKo4eGUIU40hBUnYOmFRwnVttyoMxtlQAQpag5WqfQ/8uD9ao4OYSssGfmxfax5gn/BqRmMIBCColRKtZffUxAZ7hL3dtR3qevMKLKTwDk3+gaX9ayYrRdU5WpGpKUAu6Yc3ndUgSAWu0TMGGCu4H9RnypI82kc2ueDVPy2OTiwZY3LW3mKroyalLJWFhN3QONukU6Wit8fZTxMrhoQlYF2I9N33/xwqbjZrBGsqcFhpCYl3v8AfnXT57w7DKEpZwkDch+rVyXiOVRpxm+VKPc7dhRlf8s3JN+xbDxwpBCSRqYF+Ifhs21LLQhIIlRnkNos/wBKb8MwhoKSpKTclRABDAgPuZ+1ZzuCgJC0JVps6i4Kpt6GtnQd7JJxluWMnbgO9LpQoHUYHS9dl4J4XhaCvEGtTlwbDlxdqDnfBUYp1IScNCQePmD8NvekctjK0iEVFZASklQYu+1UPD/DXXpKSos5At3NTMsNCiAp1A36RD1XwvEcRJ1Mw0twcHe5c0v+ZTmizm8lpwlq0krUgmPNZ2A9qgYoAUgsQRMhi9qvZHPLVo0oJHwmQzxIe9Zz+cSnGTrQ+hKgYhyzBzB4UyTXQrpU9OVXgoDHEcsS7G4aBRcBaChaUjyBJJdgX2PMVjxXG1rKkjQ+w96Bk8Ir8iYeG4mlpNIac01w8qFFCEB1kb31Tbl/mmsbLYjEqISBFxsGA96s+EeGJSsLVKh3AIFHR4SnUVqY78m/GozOgq+PRF8NwEAvYi78iDxqpiYqVIWkEEaSbc78u1PHKD9NQCU6zqCSGkFm9qFmMDVhoQt0kJCSQ3Q2pf8ANt6ik+eUmmcjk88jDUT+kCWbzTH2rCs5pIVhjSHPlIcC1uVWVeEoHwJTiAu4K2I6EVNx/Dxq0pQpD8SFB/wVRKkS/wCa7FcDOFS2YJ3cRO1dbgeJakoCnYJAUd+MVxgyy0E6htXQeH5gHygPqEsbExvQpUP41P0oLxlMyVcSB+cWqRnUlZdYKSAS/E/erHiaClHwgeXiHG341cnnFrX8Sn4Dlb7UVWT2hL8S5bJuMTS6dIXz3HOqfhxxMVOkJ8iYJCRcc6hZfWDBIeLjpXbeCYqcNGhw6U6ldTJrS99E7nJ0PkskVakLQw3uCoevd6TzX8LXOEt/7VfvW+a8UJlJYVV8KVpQB3PU09SRVNE3w7wNSCVLIfYCzXL7dqo5m1wzjpR84UlJMOPwD1qdmsvrQBqaZ4d29O1TY619ieZXAKWB1M5AaJI/OPKtVY5BIClJANgQ1a/y5BR5XAMkTu59o7VlGUJlh60ySG0kFRKSRG3sBa5H+6bwRrhfFndjy7Cl8JeglBCXexIDQNzcGQOvRt8SCVIv5g5I8hLidrEgcxQbHGcRAZn0kMCz8xO8QO16prSllOzMTZyWKiQNwpiRaxakNaV6DBkBwNtu7P6UdWIVhI9W3Yvyh3huPWk9mEswsuAlmDES4KXJYHe+/BzUlaGDJJACmKzYEHbjE9q6/wD6VhhOlZUskAmWJI+Ek3B68657xXwdaBqPmQWYJeLyQ9w+zCsFCGUSn9UIVCrOJTPuAL712vhnhy1pAxFkoEJSmA31NcDhYxB0jyixIlSjcObs7QGEd66/wjxgoSP1FhSW0ji77hoNFP8ABbRfzGCsHQgOIAL27k1zefyCiSEiVQp4HF5hpNWD/EeAGJVcbcfSpviv8S4KkkISdX9XDe/eqTWdMioe6hTw7LnD16wlaQlwNn2TNy1CzPiKShKdCQgKBSnZLPA4mouJ4jfUrtLf7rXJjXq1rCE7Hd9mFB2vSK8PrKqPFykrCVMFHV3IaiYPjCtJKluSA+5HCoGHjMbA9aMjGRsNPMf5ozRnCGcbGQCwSS/xBTS0wRVz+G8xrDLSNIhL2IG3OuSxsSwBeS3HryrpPCs5oQEgD19aM7TeAtZJ02ZWlAswjYMKm+KeHHESGxCl9mg/epON4qpWJoSvykAMzN6zApoZwgpAUVJ/pE2gVlOEm69iv/R8QCSFcC5jsazlvClKxBqcJSJbjs1U/wCeAJcEAbmz/wCqZ8NzpWoqYBNh2oUugz5KT7KOVyiAlm6PWMbABWkQzep4UDEzqUKa73a468KWzecUPlJTLl4HrSJPS1eVYYViITipS0qCi45N6Ul4piBZKQBG/SOl60zeCtSk4iHcBg1pv3pU4StdiAeP5+RVpRDl9BZLLleowAkgbyaKvJrOlpIJb/FVcplUkk2A3rzaZiRB32Lj096PXoyt7pEzeEtEkOTNu31qItRDnf8A3XY5ha1JWkEAmHPKe1RsbCxGYoCiHZTCLW/DWpOl2Wm18J2W8QWzKUSOBke9NoGGqSn0JH7ihpwkpVqxHJJbSLjd6eOXw1ISULClKJGkhiBz2qPHfpeRHJZJP6qAkPMPMt+GumzeUVhoUrSPhd922d6jZTNKC0JUnyIKiABy43M102YxUqQsguNCv3pdcsPFUmcrlsULWlPE8a61CilGodI41zngmBobEUHUow+yePU1W8Rx2IHFxFOm6Oa5Utf0JjYo+JSmP0/PvXsDECt4v9g/GudXmUqDrUpwDDX4e/0q3liIHL5tgLet+9FpITK/S7l0HSXZmP0/JppGTwylJa6QevOoi80pKCACeLb7tyrOW8Q8o1I6SYGwvU3r9DJZ7OfwcEkBiXSbOCSAGII7mxeX2DERgoCh8XmBAW7khn0q4swYg/LvSmVxVFQBBDqe1mS599iIfrVBIGoiQlQKtJJhTFiGHW8x65lTYoAASjcsIvvZ2vRcIBNvLJLEy13tLgWsHAoClhACWJLMOHM9belZGZ1JAuwchnEc+J/OFZIDHk4gL7XPffht9OdIZrOHSQAHAUWkwPhuYJf2tFLLxChYJPxOwgBhAuRsLP6bsp0xLl3CrRdrC9nmw60ePQNOUxcyVvpQdb3DmA/Ul3L9BTKMPE0ElCoKDpZnHmNr+nOuh/8AhjDUnX5gYIGxYB+3PnQsHBAQoHDCyCAIJG6iw1KMchvQc/dDyXo51YWpyEFIvuA3LjSSHUrSSE8y9Uc3lxhksUg7pClekj71PwMBS1WpPpRGMxhBJI1PzrbDDATei4OB8TzpSru/lSPUimcLIEpSdQSw28zXe29hWS1gb6E0YKluhOwJPIChsUmC+3ahkEHhsWjtQtJc3ahocKuWwdahEPO0U3m0JBCQoJPLhUpOZIYJVpBZ/atUr1Gb1aaUr+iVLZSwEAr8ylrVyFMoStCwUkgXkR3LAcPWhZPKlTMhxzUp+wf7VSVkySzMwEsRIcEGWtE+1CrxBmOTwlHExFK0km8jYc+n710+WzSQgJTsOBvxqLgoZbD4bTdpg9KJjpbypVpPL71SHLnWT8nifLCkfEcJJu5P1NzQfFfFQEHSAXb132pFOVCXsVXJ4njUzO4qlwzMaLyVrEnx9lLI+MFCn0slTOBsdyK6P+bSW3BtXBaWiX4c6s+GZ8BKQsO32ekm19DXg19FXF8TSlSEN5Crz8wY7VSR4Zhhylw44x1rlvG8dCy6ARyN2q14RndWGgXUkMeJNGXyEuHHoe/6cpIJQzPBkF2s9n6VPxDo0pxIUZZ/wVXGIQJVzao/iS9WIdQJACdwLuIBvJHrypk2mCXvQuvAQV63JLM235HvTGlASVNYPWElIEoLcw32HK9brw9aClIEiao/RWKx9hMPLoxka0qUk2hrjapepaVqSryp0kFrF7RzirHhWVOhraSQfWvZjLkLG7NPAh49PyK5m/1nU6WdCqFgsVBogcKn59Z1ky6Q4mDY94+lPZ0jy3nYwRf70njIK1lILeQgW80ER3+nOlltMPk41Kf0kKzqkkhISDxYE34m3auiy2cVoS5JJEz+MW3qBh5HVKQ5ELTLj+5IuQOF/WrWXwiwDgOweedjN9xzp57fZz10NY2KQgLl0qD25wb7R68KZy63EqSGgEi4YHUOr+r1MzmCoBjpKTD6lB2vYM7PvuedK4S1iBqv/Ukzv0nai5QiY9g4IJW4kAW5ag/Ugkb2oeKDqReAltzoUW1HhN+ZFer1KOGXlyV33vsoEO/URxuedb4GHpnzEKYvsWYBmb6drV6vUV6FoB4jlv1FJBLWmL7v/im9CEMhCttz+e9er1PIoHFWttKlEsJAYBi7kzENWVa2SBrAchgxuza97Da1er1TodCOeQtAS5Soj/8AYAsMw+GHTtBSJPEzjKoAWVaEoJHwi6ruUpJIIDjYb3r1eqa9jM1x0IZkgJVqiSkhXcFzzIAHKkcmhAKT5i4LBnAYy5SfMAH22evV6i/YV6MqwApZVJCmCk6VXMyZIDsXAMNxrHkw1gNvMuxDOlQ6+r16vUUb6AzGWSpRCFAM8KjVuS/CNwGrZOGtCvjQ5cfAdTzZQQ5ngZr1eoP6FFXCC0jWs6i2ySxAIJI8zOHPAeknzeaUjCEX+YMQXF4h4bsa9XqV+hpbT6Iac6Qoqm88afRnkqYkbMT39q9XqRllTPZxSXRoVe49RWVZNRDtaRz/AD7V6vVqbHmUBx8uGchi+1ewfDwoA/DdzXq9WhvRfJKM4fhGIosn4eJs33p/AV+mhIDOZsLQQ/F/tWK9XV4fZx+Qcw86oiAI3YfXalsJDrWpXxMAGS7Sn5mYu3GK9XqrRGRlCzZBE7C5P1J6UycNeGdKgymdiA/G9er1Cn3gUZyuaUAUqMu79Q/qPtWqMyVKuHLkOXtHq7ivV6oFUzOYxvId9yOv2n2qWVf+Lh7DQCLEhTP69a9XqZB3oaVlHVrDCQxEXluke1boxAW1kgt8aSxM6WLQosfavV6mQtejC1gqCSw5kHZy7Bnh3HP0V1K20gcCxPru93516vUrAj//2Q==" alt="Card image cap"  >
              <div class="card-body">
                <h5 class="card-title">로스트아크, '로아온 윈터' 12월 18일 개최 예고</h5>
                <p class="card-text">스마일게이트 RPG(대표 지원길)는 24일 로스트아크의 온라인 모험가 페스티벌 ‘LOA ON WINTER(이하 로아온 윈터)’의 안내 페이지를 오픈하고 행사 일정 및 모험가 참여 이벤트를 공개했다.</p>
              </div>
            </div>         
           <div class="card">
              <img class="card-img-top" onclick="Login_Plz()" style="cursor:pointer" src="https://img.wowtv.co.kr/wowtv_news/dnrs/20211210/B20211210144858410.jpg" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title">배틀그라운드 공짜로 즐긴다…</h5>
                <p class="card-text">크래프톤이 다음달 `PUBG: 배틀그라운드`를 무료 전환한다.</p>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" onclick="Login_Plz()" style="cursor:pointer" src="http://www.kukinews.com/data/kuk/image/2021/12/20/kuk202112200056.680x.0.png" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title">‘풀배 맹활약’, ‘롤 더 넥스트’, D조 우승으로 마무리</h5>
                <p class="card-text"> 라이엇 게임즈가 SBS와 함께 제작한 e스포츠 오디션 ‘롤 더 넥스트 2021’이 D조의 우승으로 마무리됐다. 19일 오전 0시 15분 SBS를 통해 방영된 ‘롤 더 넥스트 2021’의 결승전에서 D조가 C조를 3대 1로 꺾으면서 상금 1억원의 주인공이 됐다.</p>
              </div>
            </div>
                      
          </div>
        
        <div class="space">

        </div>
        
        <div class="jumbotron" id="jumbo">
            <h1 class="display-4">안녕하세요! 코:꾼 뉴스입니다. </h1>
            <p class="lead">저희는 로스트아크, 배틀그라운드, 리그오브레전드 등 게임 뉴스 소개 및 커뮤니티 제공합니다.</p>
            <br>
            <p> 더 많은 뉴스를 보고싶으시다면 로그인해주세요! 처음 오신 분은 회원가입 부탁드립니다.  </p>
            <p class="leadd">
              <a class="btn btn-dark" href="#" role="button">로그인</a> &nbsp;&nbsp;
              <a class="btn btn-dark" href="#" role="button">회원가입</a>             
            </p>
        </div>
		        <br><hr><br>

          <footer>
       			 <p>저작권 관련 규정 / since 2021 / 관리자 / 문의 번호/ email.</p>
     	 </footer>
      
    </body>
</html>