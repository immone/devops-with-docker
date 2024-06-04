# import the module
import python_weather
import asyncio

async def getweather():
    '''
        Prints the current temperature in Fahrenheits
    '''
    async with python_weather.Client(unit=python_weather.IMPERIAL) as client:
        weather = await client.get('Helsinki')
        print(weather.temperature)

if __name__ == '__main__':
    asyncio.run(getweather())